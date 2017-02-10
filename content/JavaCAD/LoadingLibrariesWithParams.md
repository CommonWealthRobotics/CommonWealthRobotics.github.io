---
title: Factories with Parameters
step: 13
layout: post
---
In software sometimes we want to separate out some code that we may want to use over and over again, or maybe we want to share it with other people. In JavaCAD we want to use the [Factory Pattern](https://en.wikipedia.org/wiki/Factory_method_pattern) meaning we create a factory with the script, then call it to create objects for us. The simplest case of this is to return a CSG which we call '.clone()'. 

You can create and share factories just by posting a script in a git repository. By loading up the ArrayList 'servoMeasurments' you can pass variables to the factory as parameters. Below you can see the factory itself and how it loads the parameters. 
<script src="https://gist.github.com/madhephaestus/cc98723a870e9666ff2c.js"></script>

This is a parametric script for generating servos. It takes in a bunch of measurements from your servo and creates the shapes to make a servo. 
<script src="https://gist.github.com/madhephaestus/3f9fef17b23acfadf3f7.js"></script>
