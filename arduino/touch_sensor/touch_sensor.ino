int led_pin=13;
int sig_pin=7;

void setup() {
  pinMode(led_pin,OUTPUT);
  pinMode(sig_pin,INPUT);
}

void loop() {
  if(digitalRead(sig_pin))
  {
    digitalWrite(led_pin,LOW);
    }
  else
  {
    digitalWrite(led_pin,HIGH);
    }
}
