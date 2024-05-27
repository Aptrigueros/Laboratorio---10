import processing.serial.*;
#include <Stepper.h>
Serial.puerto;

const int vuelta = 2048;
Stepper motor(vuelta, 8, 9, 10, 11);

void setup() {
  motor.setSpeed(10);
  Serial.begin(9600);  // Inicializa la comunicación serial a 9600 bps
  puerto = new Serial(this, Serial.list()[0]);
  
}

void loop() {
  if (Serial.available() > 0) {
    char comando = Serial.read();
    if (comando == 'F') {
      motor.step(vuelta);  // Gira una vuelta hacia adelante
    } else if (comando == 'B') {
      motor.step(-vuelta);  // Gira una vuelta hacia atrás
    }
  }
}
