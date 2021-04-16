#include <wiringPiI2C.h>
#include <stdio.h>
#include <stdbool.h>
#include <wiringPi.h>

int main (void) {
    int handle = wiringPiI2CSetup(0x5c);
    wiringPiI2CWrite(handle, 0x10);
    while (true) {
        int word = wiringPiI2CReadReg16(handle, 0x00);
        int lux = ((word & 0xff00) >> 8) | ((word & 0x00ff) << 8);
        printf("Current light intensity in Lux: %d \n", lux);
        delay(2000);
    }
    return 0;
}