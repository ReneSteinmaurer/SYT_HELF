#include <wiringPi.h>
#include <stdio.h>

#define STEPPER_PIN_1 38 //32
#define STEPPER_PIN_2 35 //33
#define STEPPER_PIN_3 40 //16
#define STEPPER_PIN_4 36 //18
#define STEPPER_SPEED 5

const int stepperPins[4] = {STEPPER_PIN_1,STEPPER_PIN_2,STEPPER_PIN_3,STEPPER_PIN_4};
const int stepperSteps[8][4] = {
        {HIGH, LOW, LOW, LOW},     //0
        {HIGH, HIGH, LOW, LOW},    //1
        {LOW, HIGH, LOW, LOW},     //2
        {LOW, HIGH, HIGH, LOW},    //3
        {LOW, LOW, HIGH, LOW},     //4
        {LOW, LOW, HIGH, HIGH},    //5
        {LOW, LOW, LOW, HIGH},     //6
        {HIGH, LOW, LOW, HIGH},    //7
};

void setupStepper(){
    //set Pins to OUTPUT
    for (int i = 0; i < 4; i++){
        pinMode(stepperPins[i], OUTPUT);
        digitalWrite(stepperPins[i], 0);
    }
}

void driveStepper(){
    for (int i = 0; i <= 512; i++){
        for (int step = 0; step < 8; step++){
            for (int pin = 0; pin < 4; pin++){
                digitalWrite(stepperPins[pin], stepperSteps[step][pin]);
                //printf("Stepper moving!");
                delay(STEPPER_SPEED);
            }
        }
    }
}

int main() {
    wiringPiSetupPhys();
    setupStepper();
    driveStepper();
    printf("funkt");
}