int pinLow = 2;
int pinMed = 3;
int pinHigh = 4;

void setup() {
  Serial.begin(9600);
  pinMode(pinLow, OUTPUT);
  pinMode(pinMed, OUTPUT);
  pinMode(pinHigh, OUTPUT);
}

char incomingChar = -1;
int timer;

void loop() {  
  if (Serial.available() > 0) {
    incomingChar = Serial.read();
    
    switch (incomingChar) {
    case '0':
      off();
      break;
    case '1':
      low();
      break;
    case '2':
      medium();
      break;
    case '3':
      high();
      break;
    case 'c':
      delay(5);
      Serial.print("y");
      break;
    }
  }
}

void off() {
  digitalWrite(pinHigh, LOW);
  digitalWrite(pinLow, LOW);
  digitalWrite(pinMed, LOW);
}

void low() {
  digitalWrite(pinLow, HIGH);
  digitalWrite(pinMed, LOW);
  digitalWrite(pinHigh, LOW);
}

void medium() {
  digitalWrite(pinMed, HIGH);
  digitalWrite(pinLow, LOW);
  digitalWrite(pinHigh, LOW);
}

void high() {
  digitalWrite(pinHigh, HIGH);
  digitalWrite(pinLow, LOW);
  digitalWrite(pinMed, LOW);
}
