#include <stdint.h>
#include <sched.h>

int convert(uint8_t pin) {
    int i;
    writeByte(pin, 0x44);
    for (i = 0; i < 1000; i++) {
        bcm2835_delayMicroseconds(100000);
        if (readBit(pin) == 1)break;
    }
    return i;
}

float getTemperature(uint8_t pin) {
    if (presence(pin) == 1) return -1000;
    writeByte(pin, 0xCC);
    convert(pin);
    presence(pin);
    writeByte(pin, 0xCC);
    writeByte(pin, 0xBE);
    int i;
    uint8_t data[9];
    for (i = 0; i < 9; i++) {
        data[i] = readByte(pin);
    }
    uint8_t crc = crc8(data, 9);
    if(crc!=0) return -2000;
    int t1 = data[0];
    int t2 = data[1];
    int16_t temp1 = (t2 << 8 | t1);
    float temp = (float) temp1 / 16;
    return temp;
}

int main(int argc, char **argv) {
    const struct sched_param priority = {1};
    sched_setscheduler(0, SCHED_FIFO, &priority);
    mlockall(MCL_CURRENT | MCL_FUTURE);

    if (!bcm2835_init())
        return 1;
    bcm2835_gpio_fsel(RPI_GPIO_P1_07, BCM2835_GPIO_FSEL_INPT);

    if (presence(RPI_GPIO_P1_07) == 0) {
        read temperature
    }
}