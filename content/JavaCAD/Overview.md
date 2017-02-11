---
title: Overview
step: 0
layout: post
---

##JavaCAD 
JavaCAD is a programming langauge based 3D design tool. You write code and that code describes what shapes you want and how they interact. JavaCAD can be understood through 4 concepts: Code, Primitives, CSG, Factories.

##Code
JavaCAD is a Java Library, meaning any langauge supported by BowlerStudio can be used to design parts. All of the tutorials will be done using Groovy. [Learn More about Groovy](http://www.groovy-lang.org/learn.html)

You will be expressing the pieces of your design using the programming langauge. Most programming tricks will apply here, and any Java library you would like to use can be incorperated into your designs. 

##Primitives
Primitives are the starting point for shapes. They are geometrically defined shapes and can be defined with standard inputs. Cylinders and Cubes are defined by a formula to place the intitial starting point of all of the faces of the shape. Once the initial state is created by the geometric formula, you can begin manipulating shapes. 

##CSG 
Computed Solid Geometry, or CSG, is a method of adding, subtracting, moving and streching shapes. JavaCAD makes complex shapes by combining a sequence of operations. 

##Factories
Factories, otherwise known as Libraries, are lumps of code hosted on a Git repo. You can load the code into a shape directly from the Git repo. You can share links to factories with your friends, so you can work together to build designs collaborativly. 
