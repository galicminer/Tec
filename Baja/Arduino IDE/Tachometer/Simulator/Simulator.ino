#define Signalpin 13
#define RPM 10000
float RPS=RPM/60;
float timing=1000/RPS;
void setup() {
  pinMode(Signalpin,OUTPUT);
}

void loop() {
  digitalWrite(Signalpin,LOW);
  delay(timing);
  digitalWrite(Signalpin,HIGH);
}
