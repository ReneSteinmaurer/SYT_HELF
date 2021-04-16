#include <stdio.h>
#include <sys/time.h>
#include <pigpio.h>


#define pulse_front	28														//uses the P5 Header
#define echo_front	29
#define pulse_rear	30
#define echo_rear	31


#define ESC			27
#define cls()		printf("%c[2J",ESC)
#define cursor(y,x)	printf("%c[%d;%dH",ESC,y,x)
//
float distance(int pulse,int echo) {
    struct timeval tvalBefore, tvalAfter;
    int i = 0;
    long time = 0;
    float times = 0.0, dist = 0.0;
    gpioTrigger(pulse, 15, 1);											//15 usec pulse
    i = 0;
    do {																	//wait for raising edge at echo
        i++;																//start counter for timeout
        if (i > 10000) {
            dist = -1;														//failed wait for raising edge
            return dist;													//timeout reached, ret to caller
        }
    }while (gpioRead(echo) == 0);
    gettimeofday (&tvalBefore, NULL);									//1st timeshoot at echo is gone high
    i = 0;
    do {																	//wait for falling edge at echo
        i++;																//start counter for timeout
        if (i > 90000) {
            dist = -2;														//failed wait for falling edge
            return dist;													//timeout reached, ret to caller
        }
    }while (gpioRead(echo) == 1);
    gettimeofday (&tvalAfter, NULL);										//2nd timeshoot at echo is gone low
    time = ((tvalAfter.tv_sec - tvalBefore.tv_sec)*1000000L			//calc diff 1st/2nd timeshoots
            +tvalAfter.tv_usec) - tvalBefore.tv_usec;
    times = time / 10000.0;												//calc secs
    dist = times * 170.0;													//calc distance
    return dist;
}
//
int set_GPIO_ports() {
    gpioSetMode(pulse_front, PI_OUTPUT);								//pulse front
    gpioSetMode(echo_front, PI_INPUT);									//echo front
    gpioSetMode(pulse_rear, PI_OUTPUT);									//pulse rear
    gpioSetMode(echo_rear, PI_INPUT);									//echo rear
    return 0;
}

int main () {
    float way = 0.0f;
    int ctr = 0;
    if (gpioInitialise()<0)												//if initializing GPIO fails
        return 1;															//return to OS
    set_GPIO_ports();														//set ports
    cls();
    cursor(2,1);
    printf("starting\n");
    while (1) {															//loop
        way = distance(pulse_front,echo_front);							//call distance front
        cursor(10,52);
        printf("           ");
        cursor(10,40);
        if (way == -1)														//check fail or ok
            printf("pos edge fail  \n");
        if (way == -2)														//check fail or ok
            printf("neg edge fail  \n");
        if (way > 0)
            printf("Distance 1 :-> %3.1f cm\n", way);					//print result
        way = distance(pulse_rear,echo_rear);							//call distance rear
        cursor(12,52);
        printf("           ");
        cursor(12,40);
        if (way == -1)														//check fail or ok
            printf("pos edge fail  \n");
        if (way == -2)														//check fail or ok
            printf("neg edge fail  \n");
        if (way > 0)
            printf("Distance 2 :-> %3.1f cm\n", way);					//print result
        ctr++;
        gpioSleep(PI_TIME_RELATIVE, 0, 200000);							//repeat after a delay
    }																		//'til CTRL+C is pressed
    gpioTerminate();
    return 0;																	//and go home
}