---
title: Arduino Basic Server
step: 1
layout: post
---

The first thing to do when implementing a bowler device in c is to add the BowlerCom library using the Arduino <a href="https://www.arduino.cc/en/Guide/Libraries">Library Manager</a> in the Arduino IDE.  

 <a href="https://github.com/CommonWealthRobotics/BowlerCom">Link to BowlerCom</a>

This will put a copy of c-bowler in your project root. If you are not using Git or are not familiar with git, you can just download it and place it in your project root. Here is a simple C example of setting up and running the bowler server with just the built-in bcs.core and bcs.rpc namespaces. This will respond to pings and a namespace interogation. 

<script src="https://gist.github.com/madhephaestus/6d11b420c0f5776ed3c483bc42b54597.js"></script>