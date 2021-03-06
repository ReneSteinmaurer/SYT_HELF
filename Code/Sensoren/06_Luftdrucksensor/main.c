#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <math.h>

// altitude above sea level
#define ALTITUDE 500

// address of BMP280 (0x76 or 0x77)
#define I2CADDR 0x77

// I2C bus 1
char *BUS = "/dev/i2c-1";

// raw calibration data
char data[24] = {0};
// temperature calibration coeff.
int T[3] = {0};
// pressure calibration coeff.
int P[9] = {0};

int main(void)
{
    int device;                       // devicehandle
    double temperature;             // final temperature
    double pressure;                // final pressure
    double pressure_nn;             // final pressure at sea level
    int i;                          // loop counter
    double temp1, temp2, temp3;     // calculating temperature
    double press1, press2, press3;  // calculating pressure
    char reg[1] = {0};              // reg[], config[] for I2C I/O
    char config[2] = {0};

    if((device = open(BUS, O_RDWR)) < 0)
    {
        printf("Failed to open the i2c bus. \n");
        exit(1);
    }
    // get I2C device
    ioctl(device, I2C_SLAVE, I2CADDR);

    // read 24 bytes of calibration data from address(0x88)
    reg[0] = 0x88;
    write(device, reg, 1);
    if(read(device, data, 24) != 24)
    {
        printf("Unable to read data from i2c bus\n");
        exit(1);
    }

    // temp coefficents
    T[0] = data[1] * 256 + data[0];
    T[1] = data[3] * 256 + data[2];
    if(T[1] > 32767) { T[1] -= 65536; }
    T[2] = data[5] * 256 + data[4];
    if(T[2] > 32767) { T[2] -= 65536; }

    // pressure coefficents
    P[0] = data[7] * 256 + data[6];
    for (i = 0; i < 8; i++)
    {
        P[i+1] = data[2*i+9]*256 + data[2*i+8];
        if(P[i+1] > 32767) { P[i+1] -= 65536; }
    }

    // Select control measurement register(0xF4)
    // normal mode, temp and pressure oversampling rate = 1(0x27)
    config[0] = 0xF4;
    config[1] = 0x27;
    write(device, config, 2);

    // select config register(0xF5)
    // stand_by time = 1000 ms(0xA0)
    config[0] = 0xF5;
    config[1] = 0xA0;
    write(device, config, 2);
    sleep(1);

    // Read 6 bytes of data from register(0xF7)
    reg[0] = 0xF7;
    write(device, reg, 1);
    if(read(device, data, 6) != 6)
    {
        printf("Unable to read data from i2c bus\n");
        exit(1);
    }

    // Convert pressure and temperature data to 19-bits
    long adc_p = (((long)data[0] << 12) + ((long)data[1] << 4) + (long)(data[2] >> 4));
    long adc_t = (((long)data[3] << 12) + ((long)data[4] << 4) + (long)(data[5] >> 4));

    // temperature offset calculations
    temp1 = (((double)adc_t)/16384.0 - ((double)T[0])/1024.0)*((double)T[1]);
    temp3 = ((double)adc_t)/131072.0 - ((double)T[0])/8192.0;
    temp2 = temp3*temp3*((double)T[2]);
    temperature = (temp1 + temp2)/5120.0;

    // pressure offset calculations
    press1 = ((temp1 + temp2)/2.0) - 64000.0;
    press2 = press1*press1*((double)P[5])/32768.0;
    press2 = press2 + press1*((double)P[4])*2.0;
    press2 = (press2/4.0) + (((double)P[3])*65536.0);
    press1 = (((double) P[2])*press1*press1/524288.0 + ((double) P[1])*press1)/524288.0;
    press1 = (1.0 + press1/32768.0)*((double)P[0]);
    press3 = 1048576.0 - (double)adc_p;
    if (press1 != 0.0)                                 // avoid error: division by 0
    {
        press3 = (press3 - press2/4096.0)*6250.0/press1;
        press1 = ((double)P[8])*press3*press3/2147483648.0;
        press2 = press3 * ((double)P[7])/32768.0;
        pressure = (press3 + (press1 + press2 + ((double)P[6]))/16.0)/100;
    }
    else
    { pressure = 0.0; }
    pressure_nn = pressure/pow(1 - ALTITUDE/44330.0, 5.255);

    // Output data to screen
    printf("Pressure:    %.2f hPa \n", pressure);
    printf("Pressure NN: %.2f hPa \n", pressure_nn);
    return 0;
}
