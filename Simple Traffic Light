// C++ code
//
//Pins of the trafic light
const int verde = 2;
const int amarelo = 3;
const int vermelho = 4;

const int Ldr = A0;//LDR Sensor

//Street lights
const int estac= 5;
const int jardim = 6;
const int luzesRua[ ] = {7, 8, 9};

void setup( ) {
//Set the trafic lights
pinMode(verde, OUTPUT);
pinMode(amarelo, OUTPUT);
pinMode(vermelho, OUTPUT);

pinMode(Ldr, INPUT);//Set the LDR
  
//Set the street lights
pinMode(estac, OUTPUT);
pinMode(jardim, OUTPUT);
for (int i = 0; i < 3; i++){
pinMode(luzesRua[i], OUTPUT);
}

}
void loop( ) {
cicloSemaforo();//create a function to the trafic light
verificarLuz();//create a function to verify the lights
}


void cicloSemaforo(){
// Green light
digitalWrite(verde,HIGH);
digitalWrite(amarelo,LOW);
digitalWrite(vermelho,LOW);
delay(3000);

// Yellow light
digitalWrite(verde,LOW);
digitalWrite(amarelo,HIGH);
digitalWrite(vermelho,LOW);
delay(1000);

// Red light
digitalWrite(verde,LOW);
digitalWrite(amarelo,LOW);
digitalWrite(vermelho,HIGH);
delay(3000);
}

void verificarLuz(){
int valorLuz = analogRead(A0);

if (valorLuz < 100) {
digitalWrite(estac, HIGH);
digitalWrite(jardim, HIGH);
for (int i = 0; i < 3 ; i++){
digitalWrite(luzesRua[i],HIGH);//Turn the lights on when is dark
}
// It's dark
} else {
digitalWrite(estac, LOW);
digitalWrite(jardim, LOW);
for (int i = 0; i < 3 ; i++){
digitalWrite(luzesRua[i],LOW);//Turn the lights off when is bright
// It's bright
  }
 }	
}
