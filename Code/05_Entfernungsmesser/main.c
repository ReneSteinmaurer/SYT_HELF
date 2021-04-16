#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>

#define TRUE 1

#define TRIG 15
#define ECHO 15

void setup() {
}

void getCM(int *dist) {
    //Send trig pulse
    digitalWrite(TRIG, HIGH);
    delayMicroseconds(20);
    digitalWrite(TRIG, LOW);

    //Wait for echo start
    pinMode(ECHO, INPUT);
    //while(digitalRead(ECHO) == LOW);

    //Wait for echo end
    long startTime = micros();
    while(digitalRead(ECHO) == HIGH);
    long travelTime = micros() - startTime;

    //Get distance in cm
    *dist = travelTime / 58;
}

int main(void) {
    int *dist = 0;
    wiringPiSetupPhys();
    pinMode(TRIG, OUTPUT);
    //TRIG pin must start LOW
    digitalWrite(TRIG, LOW);
    delay(30);

    while (TRUE)
    {
        getCM(&dist);
        printf("Distance: %dcm\n", dist);
    }
    delay(1000);
}
