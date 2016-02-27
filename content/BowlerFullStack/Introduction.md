---
title: C Dependancies
step: 0
layout: post
---

The first thing to do when implementing a bowler device in c is to add the c-bowler library as a <a href="http://overapi.com/git">submodule</a>to your project.  

 <a href="https://github.com/NeuronRobotics/c-bowler">Link to c-bowler</a>

This will put a copy of c-bowler in your project root. If you are not using Git or are not familiar with git, you can just download it and place it in your project root. Here is a simple C example of setting up and running the bowler server with just the built-in bcs.core and bcs.rpc namespaces. This will respond to pings and a namespace interogation. 

<script src="https://gist.github.com/madhephaestus/a9fe17f11d1e74e4d6a4.js"></script>



