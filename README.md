# rpi-fan-control
Temperature-based control of Raspberry Pi fan through GPIO port.

This package installs the **rpi-fan-control** daemon that checks temperature of the Raspberry Pi CPU and controls fan through one of the GPIO pins.

## Installation

At the moment, there are two ways to install this package:

### 1. Build .deb package
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

### 2. Install from my APT repository
```
echo "deb http://local.thedrhax.us.to/apt/stable/ /" | sudo tee "/etc/apt/sources.list.d/thedrhax.list"
wget -O- http://local.thedrhax.us.to/apt/TheDrHax.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install rpi-fan-control
```

## Configuration

There is config file /etc/rpi-fan-control/rpi-fan-control.conf in which you can change
* GPIO pin which will contol the fan
* Upper and lower temperature triggers
* Temperature refresh delay

On this picture you can see available GPIO pin numbers:

<img src="https://docs.oracle.com/javame/config/cldc/rel/3.3/rasp/gs/html/getstart_raspi/img/pinout.jpg" />
