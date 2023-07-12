int sensorPin = A0; int ledPin = 13;
void setup() {
pinMode(sensorPin,INPUT);
pinMode(ledPin,OUTPUT);
Serial.begin(9600);
}

void loop() {
int sensorValue = analogRead(sensorPin);
int thresholdValue = 512;

if(sensorValue > thresholdValue){
  digitalWrite(ledPin,HIGH);
  Serial.print("sensor Value: "+sensorValue);
  delay(1000);
  digitalWrite(ledPin,LOW);
  delay(1000);
}
else{
  digitalWrite(ledPin,LOW);
  delay(1000);
}
}
