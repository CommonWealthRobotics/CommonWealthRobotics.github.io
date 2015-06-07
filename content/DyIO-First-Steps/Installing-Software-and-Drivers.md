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




## Custom installs and special cases ##

### Just the UDEV rules please ###

### Java on the Raspberry Pi ###

### Java on the Beagle Bone Black ###



