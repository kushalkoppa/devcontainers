#include "vecu.h"
#include <stddef.h>

void vecu_step(const VecuInputs *inputs, VecuOutputs *outputs) {
  if (inputs == NULL || outputs == NULL) {
    return;
  }

  int32_t net_pedal = inputs->throttle - inputs->brake;
  if (net_pedal < 0) {
    net_pedal = 0;
  } else if (net_pedal > 100) {
    net_pedal = 100;
  }

  outputs->torque_request = net_pedal * 10;
}
