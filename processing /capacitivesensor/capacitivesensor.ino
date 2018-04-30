#include <CapacitiveSensor.h>
CapacitiveSensor cappy = CapacitiveSensor(4,2);


int threshold = 100;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(12, OUTPUT);
  

}

void loop() {
  // put your main code here, to run repeatedly:

//input 
//reads the value from the sensor/ foil
  long val = cappy.capacitiveSensor(30);
  Serial.println(val);

if (val > threshold) {
  digitalWrite(12,HIGH);
  tone(8,200);
  } else { 
    digitalWrite(12,LOW);
    tone(8,0);
    }

}
