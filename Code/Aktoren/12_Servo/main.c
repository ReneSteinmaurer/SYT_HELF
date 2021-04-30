#include <wiringPi.h>
#include <stdlib.h>

#define SERVO_NR 7 //2
void setupServo(){
    system("sudo /home/pi/PiBits/ServoBlaster/user/servod --pcm");
}

void driveServo(int degree){
    if (degree < 0) degree = 0;
    else if (degree > 180) degree = 180;

    //map degree to microseconds
    degree = map(degree,0,180,50,250);

    //creat command that system should execute
    char cmd [100];
    sprintf(cmd, "echo %d=%d > /dev/servoblaster", SERVO_NR, degree);
    system(cmd);
}

void autodriveServo(int phases){
    int count = 250 / phases;
    for (int i = 1; i <= phases; ++i) {
        driveServo(count);
        count = count + 250 / phases;
        delay(2000);
    }
}

int main() {
    setupServo();
    autodriveServo(5);
}