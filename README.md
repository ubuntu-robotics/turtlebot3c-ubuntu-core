# turtlebot3c-ubuntu-core

[![Release](https://img.shields.io/github/release/ubuntu-robotics/turtlebot3c-ubuntu-core.svg)](https://github.com/ubuntu-robotics/turtlebot3c-ubuntu-core/releases/latest)

Turtlebot3c Ubuntu Core image

The image contains the TurtleBot3c snaps:
- [turtlebot3c-bringup](https://snapcraft.io/turtlebot3c-bringup)
- [turtlebot3c-nav](https://snapcraft.io/turtlebot3c-nav)
- [turtlebot3c-teleop](https://snapcraft.io/turtlebot3c-teleop)

The image creates a Hotspot called `turtlebot3c`
with the password `turtlebot3c`.

Once connected to the hotspot,
the robot is available on the network as `turtelbot3c.local`.
Mind that you need avahi installed on your remote machine, see e.g. `snap install avahi`.

Remember to set up the `ROS_MASTER_URI` to point to the robot:

```
ROS_MASTER_URI=http://turtelbot3c.local:11311/
```

## Download the image

The image can be downloaded from the
[latest release](https://github.com/ubuntu-robotics/turtlebot3c-ubuntu-core/releases/latest).

After downloading the file `turtlebot3c.img.tar.gz`
and decompressing it, the image can be written to an SD card.

## Build the image

### Build the gadget snap

Build the gadget snap with snapcraft:

```
cd pi-gadget
snapcraft
cd ../
```

### Sign the model

[Sign the model](https://ubuntu.com/core/docs/sign-model-assertion) with your key:

```
snap sign -k tb3c-key turtlebot3c-model.json > turtlebot3c.model
```

### Generate the TurtleBot3c Ubuntu Core image

[Generate the image](https://ubuntu.com/core/docs/build-write-image):

```
ubuntu-image snap turtlebot3c.model --snap ./pi-gadget/turtlebot3c-pi_20-1_arm64.snap
```

### Boot the image

Write the generated image on an SD card with the [rpi-imager](https://snapcraft.io/rpi-imager) and boot.

