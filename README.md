# turtlebot3c-ubuntu-core

[![Release](https://img.shields.io/github/release/ubuntu-robotics/turtlebot3c-ubuntu-core.svg)](https://github.com/ubuntu-robotics/turtlebot3c-ubuntu-core/releases/latest)

Turtlebot3c Ubuntu Core image for ROS 2 Humble.

The image contains the TurtleBot3c snaps:

- [turtlebot3c-bringup](https://snapcraft.io/turtlebot3c-bringup)
- [ros2-nav2](https://snapcraft.io/ros2-nav2)
- [ros2-teleop](https://snapcraft.io/ros2-teleop)

## Download the image

The image can be downloaded from the
[releases page](https://github.com/ubuntu-robotics/turtlebot3c-ubuntu-core/releases).

## Build the image

### Build the gadget snap

Build the gadget snap with snapcraft:

```bash
cd turtlebot3c-gadget
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
ubuntu-image snap turtlebot3c.model --snap ./turtlebot3c-gadget/turtlebot3c-*.snap
```

### Boot the image

@todo
