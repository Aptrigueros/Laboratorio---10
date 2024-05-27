#include <Stepper.h>

int vuelta = 2048;
Stepper motor(vuelta, 8, 9, 10, 11);

void setup() {
  motor.setSpeed(10);
}

void loop() {
  motor.step(vuelta);
  delay(2000);
  motor.step(-vuelta);
  delay(2000);
}
