#pragma once

#include <stdint.h>

typedef struct {
  int32_t throttle;
  int32_t brake;
} VecuInputs;

typedef struct {
  int32_t torque_request;
} VecuOutputs;

void vecu_step(const VecuInputs *inputs, VecuOutputs *outputs);
