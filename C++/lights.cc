
void setup()
{
  pinMode(13, OUTPUT);
  pinMode(11, OUTPUT);
}

void loop()
{
  digitalWrite(13, 1);
  digitalWrite(11, 0);
  
  delay(200); 
  
  
  digitalWrite(13, 0);
  digitalWrite(11, 1);
  
  delay(200); 
  
}

