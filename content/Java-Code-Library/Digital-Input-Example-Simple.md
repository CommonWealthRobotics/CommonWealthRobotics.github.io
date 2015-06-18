---
title: Digital Input Example Simple
step: 2
layout: post
---

<iframe width="280" height="150" src="http://www.youtube.com/embed/A88uCyVGOHs" frameborder="0" allowfullscreen></iframe>

A Digital Input Channel is a channel on the DyIO set to Digital Input mode. Some common sensors that are typically used in Digital Input mode include limit switches and buttons.

All channels on the DyIO may be set to Digital Input mode, and all channels in Digital Input mode can read input in either synchronous or asynchronous mode.

Channels on the DyIO set to Digital Input mode will read the voltage between the signal pin of that channel and a ground - usually the ground pin of that channel.

The DyIO then will return that input as either a "high" or "low" value:

    Input over 2.5 volts is considered high, otherwise it is considered low.
    When coding in Java using the DyIO, "high" is given as a boolean true value ("low" is given as a boolean false).


In This example we will poll the digital input port and print out the values. To run the example in NrConsole, hit run and press a button connected to channel 8.

<script src='https://gist.github.com/madhephaestus/40fadfa5804eee848e62.js'></script>
