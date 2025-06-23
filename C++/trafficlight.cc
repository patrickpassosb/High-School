
void setup()
{
  pinMode(13, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(6,OUTPUT);
  
}

void loop()
{
  digitalWrite(13, 1);
  digitalWrite(9, 0);
  digitalWrite(6, 0);
  
  delay(5000); 
  
  
  digitalWrite(13, 0);
  digitalWrite(9, 1);
  digitalWrite(6, 0);
  
  delay(5000); 
  
  digitalWrite(13, 0);
  digitalWrite(9, 0);
  digitalWrite(6, 1);
  
  delay(5000); 
  
  
}
