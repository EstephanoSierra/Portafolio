#include <Servo.h>
Servo motor;  
  
int PinServo=7;
int angulo=0;               
int pot=A1;
int lectura;//almacena los datos del potenciometro
int btn=8;
void setup() {
  
  motor.attach(PinServo);
  motor.write(angulo);
}

void loop() {
  lectura = analogRead(pot);
  angulo = map(lectura,0,1023,0,180);
  motor.write(angulo);
  delay(10);
}                   
