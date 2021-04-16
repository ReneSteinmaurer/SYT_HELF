#include <stdio.h>
#include <wiringPi.h>
#include <wiringPiI2C.h>

void readBH(double *refLux) {
    wiringPiSetup();

    int handle = wiringPiI2CSetup(0x5C);
    wiringPiI2CWrite(handle, 0x10);
    delay(1000);
    int word = wiringPiI2CReadReg16(handle, 0x00);
    *refLux = ((word & 0xff00) >> 8) | ((word & 0x00ff) << 8);
}

int main() {
    double bhLux = 0;

    while (1) {
        printf("\nBH1750: ");
        readBH(&bhLux);
        printf("Light: %.2flx", bhLux);
        delay(1000);
    }
    return 0;
}
