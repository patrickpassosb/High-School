#include <Servo.h>
Servo meuservo;	
int pot = 0;
int val;

void setup() {
  meuservo.attach(3);
}

void loop() {
  val = analogRead(pot);
  val = map(val, 0, 1023, 0, 180);
  meuservo.write(val);
  delay(15);
}
