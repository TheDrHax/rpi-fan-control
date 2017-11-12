# rpi-fan-control
Temperature-based control of Raspberry Pi fan through GPIO port.

This package installs the **rpi-fan-control** daemon that checks temperature of the Raspberry Pi CPU and controls fan through one of the GPIO pins.

## Installation (.deb package)

Dependencies:
* fakeroot

You can build .deb package using Makefile:
```
make deb
```
And then install it with ```dpkg```:
```
sudo dpkg -i rpi-fan-control-*.deb
```

## Configuration

There is config file /etc/rpi-fan-control/rpi-fan-control.conf in which you can change
* GPIO pin which will contol the fan
* Upper and lower temperature triggers
* Temperature refresh delay

On this picture you can see available GPIO pin numbers:

<img src="https://docs.oracle.com/javame/config/cldc/rel/3.3/rasp/gs/html/getstart_raspi/img/pinout.jpg" />
