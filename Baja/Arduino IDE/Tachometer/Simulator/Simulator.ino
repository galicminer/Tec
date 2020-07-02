#define Signalpin 13
#define RPM 300
float RPS=RPM/60;
float timing=1000/RPS;
void setup() {
  pinMode(Signalpin,OUTPUT);
}

void loop() {
  digitalWrite(Signalpin,HIGH);
  delay(timing);
  digitalWrite(Signalpin,LOW);
  delay(timing);
}
