#include <stdio.h>
#include "vecu.h"

int main(void) {
    VecuInputs inputs = { .throttle = 60, .brake = 10 };
    VecuOutputs outputs = {0};

    vecu_step(&inputs, &outputs);

    printf("Torque request: %d\n", outputs.torque_request);
    return outputs.torque_request > 0 ? 0 : 1;
}
