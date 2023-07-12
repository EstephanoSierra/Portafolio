#include <Servo.h>
Servo motor;
int trigger=5; // para generar ondas
int echo=6; // lectura
int pinservo =7;

void setup() {

    pinMode(echo,INPUT);//lectura
    pinMode(trigger,OUTPUT);//salida
    Serial.begin(9600); //configurar el monitor serial 
  motor.attach(pinservo);   
}

void loop() {
  
    //Disparo de pulso 
    digitalWrite(trigger,HIGH);//ACTIVACION DEL TRIGGER
    delay(10);
    digitalWrite(trigger,LOW);//flanco descendente 
    int lectura = pulseIn(echo,HIGH);
    int distancia = lectura/59;
    Serial.println("la distancia es: ");//+ lectura
    Serial.println(distancia);
  delay(50);


  if(distancia < 20 ){
    motor.write(90);
  }
  if(distancia > 20){
    motor.write(0);
  }
  if(distancia > 30){
  motor.write(90);
    Serial.println("error");
    delay(50);
  }
  

}
