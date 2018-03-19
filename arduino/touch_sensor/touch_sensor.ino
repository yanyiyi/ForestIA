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

void setup() {
  Serial.begin(9600);
  pinMode(led_pin,OUTPUT);
  pinMode(sig_pin1,INPUT);
  pinMode(sig_pin2,INPUT);
  pinMode(sig_pin3,INPUT);
  pinMode(sig_pin4,INPUT);
  pinMode(sig_pin5,INPUT);
  pinMode(sig_pin6,INPUT);
  pinMode(sig_pin7,INPUT);
  pinMode(sig_pin8,INPUT);
  pinMode(sig_pin9,INPUT);

}

void loop() {
  if(digitalRead(sig_pin1)){
   digitalWrite(led_pin,HIGH);
   Serial.println("1");
   }
  if(digitalRead(sig_pin2)){
    digitalWrite(led_pin,HIGH);
    Serial.println("2");
    }
  if(digitalRead(sig_pin3)){
    digitalWrite(led_pin,HIGH);
    Serial.println("3");
    }
  if(digitalRead(sig_pin4)){
    digitalWrite(led_pin,HIGH);
    Serial.println("4");
    }
  if(digitalRead(sig_pin5)){
    digitalWrite(led_pin,HIGH);
    Serial.println("5");
    }
  if(digitalRead(sig_pin6)){
    digitalWrite(led_pin,HIGH);
    Serial.println("6");
    }
  if(digitalRead(sig_pin7)){
    }else{
    digitalWrite(led_pin,HIGH);
    Serial.println("7");}
  if(digitalRead(sig_pin8)){
    }else{
    digitalWrite(led_pin,HIGH);
    Serial.println("8");}
  if(digitalRead(sig_pin9)){
    }else{
    digitalWrite(led_pin,HIGH);
    Serial.println("9");}  
    
}
