#include <wiringPi.h>
#include <stdio.h>

int main() {

    if (wiringPiSetupPhys() == -1)
        return 1;


    pinMode(0, OUTPUT);

    // Dauerschleife
    while(1) {
        printf("in loop\n");
        // LED an
        digitalWrite(0, 1);

        // Warte 100 ms
        delay(1000);

        // LED aus
        digitalWrite(0, 0);
        printf("LED State: " + digitalRead(0) + "\n");

        // Warte 100 ms
        delay(1000);
    }
}