# turtlebot3c-ubuntu-core

[![Release](https://img.shields.io/github/release/ubuntu-robotics/turtlebot3c-ubuntu-core.svg)](https://github.com/ubuntu-robotics/turtlebot3c-ubuntu-core/releases/latest)

Turtlebot3c Ubuntu Core image

The image contains the TurtleBot3c snaps:

- [turtlebot3c-bringup](https://snapcraft.io/turtlebot3c-bringup)
- [turtlebot3c-nav](https://snapcraft.io/turtlebot3c-nav)
- [turtlebot3c-teleop](https://snapcraft.io/turtlebot3c-teleop)

Remember to set up the `ROS_MASTER_URI` to point to the robot:

```bash
ROS_MASTER_URI=http://turtelbot3c.local:11311/
```

## Download the image

The image can be downloaded from the
[releases page](https://github.com/ubuntu-robotics/turtlebot3c-ubuntu-core/releases).

After downloading the file `turtlebot3c.img.tar.gz`
and decompressing it, the image can be written to an SD card.

## Build the image

### Build the gadget snap

Build the gadget snap with snapcraft:

```bash
cd pi-gadget
snapcraft
cd ../
```

### Sign the model

[Sign the model](https://ubuntu.com/core/docs/sign-model-assertion) with your key:

```bash
snap sign -k tb3c-key turtlebot3c-model.json > turtlebot3c.model
```

### Generate the TurtleBot3c Ubuntu Core image

[Generate the image](https://ubuntu.com/core/docs/build-write-image):

```bash
ubuntu-image snap turtlebot3c.model --snap ./pi-gadget/turtlebot3c-pi_20-1_arm64.snap
```

### Boot the image

@todo
