#include <Servo.h>
Servo motor;
int led1 = 1;
int led2 = 2;
int PinServo = 7;
int angulo = 0;
int btn1 = 4;
int btn2 = 5;
int estado1;
int estado2;
int pot = A1;
int lectura;//almacena los datos del potenciometro
void setup() {
  pinMode(btn1, INPUT);
  pinMode(btn2, INPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  motor.attach(PinServo);
  motor.write(angulo);
}

void loop() {
  estado1 = digitalRead(btn1);
  estado2 = digitalRead(btn2);

  lectura = analogRead(pot);
  angulo = map(lectura, 0, 1023, 0, 180);


  if (estado1 == HIGH) {//motor en h investigar
    angulo++;
    digitalWrite(led1, HIGH);
    if (angulo >= 100) {
      angulo = 90;
    } else
      angulo--;
    digitalWrite(led1, HIGH);
    if (angulo <= 0) {
      angulo = 0;
    }
  }

  /*  if(estado2 == HIGH){
    angulo--;
    digitalWrite(led2,HIGH);
    if (angulo>=90){
      angulo=90;
    }else
    angulo++;
    digitalWrite(led2,HIGH);
    if (angulo<=0){
      angulo=0;
    }
    }

*/
    motor.write(angulo);
    delay(10);
    }
