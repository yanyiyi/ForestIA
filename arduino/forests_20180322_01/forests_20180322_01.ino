/*
mori
*/

int led_pin = 13;
int sig_pin1 = 3;
int sig_pin2 = 4;
int sig_pin3 = 5;
int sig_pin4 = 6;
int sig_pin5 = 7;
int sig_pin6 = 8;
int sig_pin7 = 9;
int sig_pin8 = 10;
int sig_pin9 = 11;

char read;
int n = 3;

void setup() {
  Serial.begin(9600);
  pinMode(led_pin, OUTPUT);
  pinMode(sig_pin1, INPUT);
  pinMode(sig_pin2, INPUT);
  pinMode(sig_pin3, INPUT);
  pinMode(sig_pin4, INPUT);
  pinMode(sig_pin5, INPUT);
  pinMode(sig_pin6, INPUT);
  pinMode(sig_pin7, INPUT);
  pinMode(sig_pin8, INPUT);
  pinMode(sig_pin9, INPUT);

}

void loop() {
  
  for(n=3;n<=11;n++){
    if(digitalRead(n) == HIGH){
      read = char(n-2); 
  
    switch (read) {
      case 1:
        digitalWrite(led_pin, HIGH);
        Serial.println("1");
        break;
    
      case 2:
        digitalWrite(led_pin, HIGH);
        Serial.println("2");
        break;
    
      case 3:
        digitalWrite(led_pin, HIGH);
        Serial.println("3");
        break;
    
      case 4:
        digitalWrite(led_pin, HIGH);
        Serial.println("4");
        break;
    
      case 5:
        digitalWrite(led_pin, HIGH);
        Serial.println("5");
        break;
      
      case 6:
        digitalWrite(led_pin, HIGH);
        Serial.println("6");
        break;

      case 7:
        digitalWrite(led_pin, HIGH);
        Serial.println("7");
        break;
      
      case 8:
        digitalWrite(led_pin, HIGH);
        Serial.println("8");
        break;
      
      case 9:
        digitalWrite(led_pin, HIGH);
        Serial.println("9");
        break;
    
      case 10:
        for(n=3;n<=11;n++){
        digitalWrite(led_pin, LOW);
        break;
      }
    }
    
    
    }
//    else {
//      read = "10";
//      Serial.println("0");
//    }
//  delay(30);
  }

}