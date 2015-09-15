---
title: Installing Software and Drivers
step: 1
layout: post
---

## Installing Software and Drivers ##
Before you can use the DyIO you'll need to install Bowler Studio for your computer.
Even if you plan to use Eclipse, Processing, or some other language entirely it is still a good idea to install BowlerStudio for your platform because it also installs drivers for the DyIO itself.

<div class="bs-callout bs-callout-danger" markdown="1">

#### Do not plug in DyIO on Windows before installing drivers. ####

On a windows computer it is important to run the installer before plugging in the DyIO. This prevents windows from auto-installing a correct driver.

If you did this and are failing to connect to your DyIO then

1. Go into the `Device Manager`
2. Right Click on `DyIO v.3`
3. Select `Uninstall Driver`
4. Unplug the DyIO
5. Continue Below

</div>


## Making sure everything works ##

<div class="bs-callout bs-callout-info" markdown="1">

#### Try Using BowlerStudio ####

IF you're viewing this in a web browser thats cool but it will make more sense in BowlerStudio because you can just click "Run" and get instant gratification.
</div>


We're gonna use this simple groovy script to check the status of our DyIO.
If you don't have a DyIO plugged in BowlerStudio should prompt you when you try and run the gist below. If everything worked out you should see the status of all the DyIO's channels, its Serial Number, and some additional information.

If everything's kosher feel free to move onto additional steps.

<script src="https://gist.github.com/madhephaestus/5da47af65fbc1f991821.js"></script>


## Common MAC problems ##

### Wrong Java Version ###
Sometimes, especially if you're using an older mac, the version of java is pretty old and needs to be updated. If you're getting the error below then you need to click on this link and install java version 8 or newer.

<img src="/img/mac-old-java.png" class="img-responsive">



## Custom installs and special cases ##

### Just the UDEV rules please ###

### Java on the Raspberry Pi ###

### Java on the Beagle Bone Black ###

#### Beaglbone Black/Green Getting Started:
Visit the getting started guide and get your Beabgleboard up and running.
http://beagleboard.org/getting-started

### SSH Access
It is important to have SSH access on your Beaglebone for installing Java and building BowlerStudio. First get SSH access on your Beaglebone Black/Green the guide below will help with that no matter which operating system you are using.

**Linux / UNIX**

1. Open a Terminal emulator
2. Type : ssh root@192.168.7.2
3. When prompted for a password just hit enter the root password is blank by default on the Beaglebone

**Windows**

1. Download and Install PuTTY Telnet Client: http://www.putty.org/
2. Install and Open PuTTY
3. Select SSH in the configuration dialog, type: 192.168.7.2 for the address  and click open
4. Type in root for the username, the password is blank by default so just hit enter

**Mac OS X**

1. On Mac OS X go into the /Applications/Utilities and open Terminal.app
2. Type : sudo ssh root@192.168.7.2
3. Type your user password
4. When prompted for a password just hit enter the root password is blank by default on the Beaglebone

### Installing Java 8 JDK

**Installing on Debian** (ships with Beaglebone)
Installing the Latest Java from Oracle is rather simple since the Beaglebone Black/Green ships with Debian which utilizes the apt-get package manager. There happens to be a repository for Java 8 so it can be isntalled easily this way.

apt-get package manager method
```shell
sudo apt-get update
sudo apt-get install oracle-java8-installer
```

If the package is not available alternatively try:
```shell
wget https://repos.rcn-ee.net/debian/pool/main/o/oracle-java8-installer/oracle-java8-installer_8u31%2b8u33arm-1~bpo70%2b20150121%2b1_all.deb
sudo dpkg -i oracle-java8-installer_8u31%2b8u33arm-1~bpo70%2b20150121%2b1_all.deb
```

The installation will take some time to finish, when it does it will tell you that Java 8 has installed successfully. This tutorial was created using information found here: http://elinux.org/Beagleboard:BeagleBoneBlack_Debian#Oracle_Java_8

**Installing on Ubuntu**
Coming Soon......





