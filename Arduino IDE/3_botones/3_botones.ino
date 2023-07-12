  #include <Servo.h>

Servo servomotor;
int led1=2;
int led2 = 3;
int pinServo = 7;
int angulo = 0;
int btn1 = 4;
int btn2 = 5;
int btn3 = 6;
int pot = A1;
int estado1,estado2,estado3,lectura;


void setup()
{
 servomotor.attach(pinServo);
 pinMode(btn1,INPUT);
 pinMode(btn2,INPUT);
 pinMode(btn3,INPUT);
 pinMode(pot,INPUT);
 pinMode(led1, OUTPUT);
 pinMode(led2, OUTPUT);
 servomotor.write(angulo);

}

void loop()
{
  
  
  estado1 = digitalRead(btn1);
  estado2 = digitalRead(btn2);
  estado3 = digitalRead(btn3);
  if(estado1 == HIGH){
   angulo++;
    if(angulo >= 180){
     angulo = 180;
      servomotor.write(angulo);
digitalWrite(led1,HIGH);
    delay(100);
    }else{
      digitalWrite(led1,LOW);
    }
  }
  

 
  
  
  
  if(estado2 == HIGH){
    angulo--;
    if(angulo <= 0){
      angulo = 0;
      servomotor.write(angulo);
        digitalWrite(led2,HIGH);
    delay(100);
   }else{
      digitalWrite(led1,LOW);
    } 
  }
  
  if(estado2 == LOW){
    digitalWrite(led2,LOW);
  }
  
  

  
  
  
  
 if(estado1 == HIGH && estado2 == HIGH){
 
 if(estado3 == LOW){


    lectura = analogRead(pot);
    angulo = map(lectura,0,1023,0,180);

    servomotor.write(angulo);
      delay(10);

 }
 

  }

}
