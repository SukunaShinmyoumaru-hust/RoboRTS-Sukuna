#ifndef GRBL_H
#define GRBL_H

#include <chrono>
#include <algorithm>
#include <condition_variable>
#include <mutex>
#include <thread>
#include <cmath>
#include <cstring>

#define BLOCK_BUFFER_SIZE 100
#define NOMIBAL_FEED 50
#define ACCELERATION 5
#define N_AXIS 2
// #define M_PI 3.1415926
#define N_ARC_CORRECTION 12 // Integer (1-255)
#define MINIMUM_JUNCTION_SPEED 0.0
#define MINIMUM_FEED_RATE 1.0
#define SOME_LARGE_VALUE 1.0E+38
#define X_AXIS 0 // Axis indexing value. 
#define Y_AXIS 1
#define X_DIRECTION_BIT   7 // MEGA2560 Digital Pin 30
#define Y_DIRECTION_BIT   6 // MEGA2560 Digital Pin 31
#define USE_MC_ARC

class TempBlock{
public:
    int step;
    int cross;
    float millimeters;
    float last_target[N_AXIS];
    float forwards[N_AXIS];
};

// This struct stores a linear movement of a g-code block motion with its critical "nominal" values
// are as specified in the source g-code. 
class PlanBlock{
public:
  // Fields used by the bresenham algorithm for tracing the line
  // NOTE: Used by stepper algorithm to execute the block correctly. Do not alter these values.
  int direction_bits;    // The direction bit set for this block (refers to *_DIRECTION_BIT in config.h)
  int steps[N_AXIS];    // Step count along each axis
  float last_target[N_AXIS];
  int step_event_count; // The maximum step axis count and number of steps required to complete this block. 
  float forwards[2];
  // Fields used by the motion planner to manage acceleration
  float entry_speed_sqr;         // The current planned entry speed at block junction in (mm/min)^2
  float max_entry_speed_sqr;     // Maximum allowable entry speed based on the minimum of junction limit and 
                                 //   neighboring nominal speeds with overrides in (mm/min)^2
  float max_junction_speed_sqr;  // Junction entry speed limit based on direction vectors in (mm/min)^2
  float nominal_speed_sqr;       // Axis-limit adjusted nominal speed for this block in (mm/min)^2
  float acceleration;            // Axis-limit adjusted line acceleration in (mm/min^2)
  float millimeters;             // The remaining distance for this block to be executed in (mm)
  // int max_override;       // Maximum override value based on axis speed limits
};


class Setting{
public:
  // Axis settings
  float steps_per_mm[N_AXIS];
  float max_rate[N_AXIS];
  float acceleration[N_AXIS];
  float max_travel[N_AXIS];

  // Remaining Grbl settings
  int pulse_microseconds;
  int step_invert_mask;
  int dir_invert_mask;
  int stepper_idle_lock_time; // If max value 255, steppers do not disable.
  int status_report_mask; // Mask to indicate desired report data.
  float junction_deviation;
  float arc_tolerance;
  
  int flags;  // Contains default boolean settings

  int homing_dir_mask;
  float homing_feed_rate;
  float homing_seek_rate;
  int homing_debounce_delay;
  float homing_pulloff;
};

class Planner {
public:
  int32_t position[N_AXIS];          // The planner position of the tool in absolute steps. Kept separate
                                     // from g-code position for movements requiring multiple line motions,
                                     // i.e. arcs, canned cycles, and backlash compensation.
  float previous_unit_vec[N_AXIS];   // Unit vector of previous path line segment
  float previous_nominal_speed_sqr;  // Nominal speed of previous path line segment
};

class Grbl{
public:
  PlanBlock block_buffer[BLOCK_BUFFER_SIZE];  // A ring buffer for motion instructions
  int block_buffer_tail;
  int block_buffer_head;     // Index of the next block to be pushed
  int next_buffer_head;      // Index of the next buffer head
  int block_buffer_planned;  // Index of the optimally planned block
  float now_velocity;
  Setting settings;
  TempBlock start_buffer[BLOCK_BUFFER_SIZE];  // A ring buffer for motion instructions
  int start_buffer_tail;
  Planner pl;
  Grbl();

  void planner_recalculate();
  // Initialize and reset the motion plan subsystem
  void plan_reset();

  // Add a new linear movement to the buffer. target[N_AXIS] is the signed, absolute target position 
  // in millimeters. Feed rate specifies the speed of the motion. If feed rate is inverted, the feed
  // rate is taken to mean "frequency" and would complete the operation in 1/feed_rate minutes.

  void plan_buffer_line(float *target, float feed_rate, int invert_feed_rate,int circle);

  // Called when the current block is no longer needed. Discards the block and makes the memory
  // availible for new blocks.
  void plan_discard_current_block();

  // Gets the current block. Returns NULL if buffer empty
  PlanBlock *plan_get_current_block();

  // Called periodically by step segment buffer. Mostly used internally by planner.
  int plan_next_block_index(int block_index);

  int plan_prev_block_index(int block_index);

  // Called by step segment buffer when computing executing block velocity profile.
  float plan_get_exec_block_exit_speed();

  // Reset the planner position vector (in steps)
  void plan_sync_position();

  // Reinitialize plan with a partially completed block
  void plan_cycle_reinitialize();

  // Returns the number of active blocks are in the planner buffer.
  int plan_get_block_buffer_count();

  // Returns the status of the block ring buffer. True, if buffer is full.
  int plan_check_full_buffer();

  void mc_arc(float *position, float *target, float *offset, float radius, float feed_rate,int invert_feed_rate, int axis_0, int axis_1, int axis_linear, int is_clockwise_arc);

  void grbl_init();

  void add_path();

  void check_struct();
};
#endif