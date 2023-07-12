#include <Servo.h>

Servo servomotor;
Servo servomotor2;
int angulo2 = 0;
int pinServo = 7;
int pinServo2 = 6;
int angulo = 0;
int btn1 = 4;
int btn2 = 5;
int btn3 = 6;
int pot = A1;
int estado1,estado2,lectura;


void setup()
{
 servomotor2.attach(pinServo2);
 servomotor.attach(pinServo);
 pinMode(btn1,INPUT);
 pinMode(btn2,INPUT);
 pinMode(btn3,INPUT);
 pinMode(pot,INPUT);
 servomotor.write(angulo);
 servomotor2.write(angulo2);
}

void loop()
{
  
  
  estado1 = digitalRead(btn1);
  estado2 = digitalRead(btn2);
  
  
    

  if(estado1 == HIGH){
    
    angulo++;
    if(angulo >= 180){
     angulo = 180;
   }
    servomotor.write(angulo);
  }

  if(estado2 == HIGH){
    angulo--;
    if(angulo <= 0){
      angulo = 0;
   } 
    servomotor.write(angulo);
  }
  
  
   lectura = analogRead(pot);
    angulo2 = map(lectura,0,1023,0,180);
    servomotor2.write(angulo2);
  delay(10);
  
}
