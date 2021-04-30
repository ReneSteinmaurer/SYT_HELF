#include <stdio.h>
#include <ads1115.h>
#include <wiringPi.h>
#include <stdbool.h>
#define BASE 120
#define I2CADDRESS 0x49
void setUp(int base, int address){
    ads1115Setup (base, address) ;
}
void readValue(int base, int values[]){
    for (int i = 0; i < sizeof(values); ++i) {
        values[i] = analogRead(base + i);
    }
}

int main (void) {
    int values[4];

    setUp(BASE, I2CADDRESS);
    while (true){
        readValue(BASE, values);
        for (int i = 0; i < 4; ++i) {
            printf("Für den Channel %d lautet der Wert %d! \n", i, values[i]);
            delay(100);
        }
        printf("\n\n\n");
        delay(4000);
    }
    return 0;
}