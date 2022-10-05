int j = 1;
int x = 3;
int y = 7;
int z = 0;
String myString = "j = ";

void setup() {
  Serial.begin(115200);
}

void loop() {
  Serial.print(myString);
  Serial.println(j);
  j = j + 1;
  delay(1000);
}
