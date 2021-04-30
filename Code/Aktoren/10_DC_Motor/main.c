#include <stdbool.h>
#include <wiringPi.h>
#include <softPwm.h>

#define PWM_MOT_1 38
#define FWD 40
#define BWD 36


void initPinModes(int powerPin, int fwdPin, int bwdPin){
    pinMode(powerPin, OUTPUT);
    pinMode(fwdPin, OUTPUT);
    pinMode(bwdPin, OUTPUT);
}

void driveDcMotor(int powerPin, int fwdPin, int bwdPin, int power, bool forward){
    digitalWrite(fwdPin, forward);
    digitalWrite(bwdPin, !forward);
    softPwmWrite(38,power/2.55);
}


void createPWM(int pin, int value, int range){
    softPwmCreate(pin,value,range);
}



int main() {
    wiringPiSetupPhys();

    initPinModes(PWM_MOT_1,FWD,BWD);

    while (true) {
        createPWM(38,0,200);
        for (int i = 0; i < 255; i++) {
            driveDcMotor(PWM_MOT_1, FWD, BWD, i, true);
            delay(50);
        }
        delay(1000);
        for (int i = 255; i > 0; i--) {
            driveDcMotor(PWM_MOT_1, FWD, BWD, i, false);
            delay(50);
        }
        delay(1000);
    }

}
