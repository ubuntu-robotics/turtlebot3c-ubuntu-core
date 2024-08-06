# turtlebot3c-ubuntu-core
Turtlebot3c Ubuntu Core image running in an amd64 VM.

The image will contain the TurtleBot3c snaps:
- [turtlebot3c-bringup](https://snapcraft.io/turtlebot3c-bringup)
- [turtlebot3c-nav](https://snapcraft.io/turtlebot3c-nav)
- [turtlebot3c-teleop](https://snapcraft.io/turtlebot3c-teleop)

The robot will be available at `turtelbot3c.local`

All the ROS topics are available on the `ROS_MASTER_URI`:

```
ROS_MASTER_URI=http://turtelbot3c.local:11311/
```

## Build the image

### Build the gadget snap

Build the gadget snap with snapcraft

```
cd pc-gadget
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
ubuntu-image snap turtlebot3c.model --snap ./pc-gadget/turtlebot3c-pc_20-0.4_amd64.snap
```

### Import the image in LXD

Call the following script to import the generated image into LXD:
```
./import-pc-img-in-lxd.bash

```

### Launch the VM

To launch a VM of the import image call:

```
lxc launch turtlebot3c-core-20 tb3c-vm --vm
```
