---
title: Analytic Solver
step: 3
layout: post
---

##Analytic Solver Overview

Simple robot systems can be analytically solved when constraints and degrees of freedom align.  Delta robots and 2 link revolute (rotational joint) arms are two examples of such robots that can be analytically analyzed.  A delta robot is a system with 3 identical towers or points of rotation, all connecting to one tool tip.  Depending on the configuration, it can pivot around a point or traverse the space, mirrored in 120 degree segments around the work space.  This is also a great example of Parallel links, whereas a Series system, (like the 2 link revolute arm) is a series of sequential links connected one by one.  There is one pose per achievable position since they aren't over-constrained.  It may not be possible to fully orient in every position, but mapping forward and inverse kinematics is a direct affair.

##Analytic Solver Techniques

Direct systems can be analyzed as a series of linear equations or simplified to laws of triangles.  A 2 link planar arm reaching for a point in 2D space has a limited number of ways to solve the end point.  The base position and end point are known, so the end position of link 1 is the unknown.  Drawing out the system to find that link position and with that the associated angles means equations of motion can be determined with a few simple lines of code or lower level math.  There is no standard algorithm for finding the ideal pose, and it does not need to be recursively run for optimization purposes.