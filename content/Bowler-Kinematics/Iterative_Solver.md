---
title: Iterative Solver
step: 4
layout: post
---

##Iterative Solver Overview

Complex robot systems may not have a 'one-size fits all' solution to kinematics, and require some sort of decision or criteria matrix to specify and choose tool paths.  Robots that have many limbs may have a large array of possible solution poses, so building a robust system to prioritize hypothetical energy efficiency, torque curves or minimize link motion can take a control system to the next level.  With more conditionals, optimizations and search criteria, the control algorithm greatly expands in complexity and computational requirements.

##Iterative Solver Techniques

Standard binary search tree methods work by looking at branches to see which option is better.  By traversing the tree it's possible to directly compare each branch path and find the optimal path through the system, and by iteratively repeating the search, the ideal matches can be found.  

The kinematic equivalent of this function is to have a starting pose, and 'build the tree' towards the desired end conditions.  Starting from a base position, shift the first link one step in either direction (clockwise and counterclockwise, forward and back, etc) and determine which one is closer to the end state, and saving that state.  Next, go to the next link and do the same thing, finding which direction a single step would provide a larger step towards the end goals.  When each link is tested this way, the whole operation is started again from the top, repeated until the end conditions are met or a timeout is reached.

Gradient Descent is another iterative kinematic model, which maps the entire achievable space of the system.  By rating each pose in a 2D or 3D grid, it's possible to trace through the map to find the ideal path or system state, although compared to other methods it is typically much more computationally expensive as there can be a lot of achievable poses that may not be realistic but still take up more than a small level of computation power and time.

<img src="/img/IterativeKinematicSolver.png" alt="Iterative Kinematics Example" class="img-responsive">