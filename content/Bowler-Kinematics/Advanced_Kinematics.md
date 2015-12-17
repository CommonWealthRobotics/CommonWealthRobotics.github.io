---
title: Advanced Kinematics
step: 1
layout: post
---


##Jacobian

For Kinematic systems, the Task Space is used to describe the global coordinates, where the task is being performed.  Forward Kinematics solves for the Task Space based on the robot properties.  The Joint Space is the internal robot reference system, which typically includes the joint angles, lengths and offsets.  Inverse Kinematics solves for the Joint Space from the Task Space.  Both are important ways of modeling jobs and systems, and being able to convert between them are absolutely critical in modeling and job functionality.

A Jacobian Matrix defines the physical properties and is used in both Forward and Inverse Kinematics models to translate between the Task and Joint spaces.  The Jacobian matrix, which is calculated from the DH parameters and current pose of the system, multiplied by the Joint Space Velocity matrix gives the Task Space Velocity.  The Inverse Kinematics side can get much more complicated as adjusting this equation to solve for the Joint space means taking the inverse of the Jacobian matrix.

##Inverse Jacobian

By definition, the inverse of a matrix is what needs to be multiplied by a matrix to result in the identity matrix.  Only square matrices can have inverses, and not all square matrices can be inverted (and are called noninvertible or singular).  In kinematics, the Jacobian matrix size is based on both the number of links and degrees of freedom.  The three possible conditions are where the system DOF and the number of links are: equal, greater than or less than.  There will only be a square Jacobian when the system DOF and number of links are equal.  When the system DOF is greater than the number of links, it is very possible that not all desired states are achievable.  When the number of links is greater than the system DOF, over-articulation is possible.  This means that there may be multiple poses that give a solution to one particular task space.  A 6 link system in a 3 DOF space (x,y,z coordinates) will result in a Jacobian with 3 rows and 6 columns.

<script src="https://gist.github.com/mdiblasi/9925fd3572b30419c425.js"></script>

##Pseudo Jacobian

Generating the Inverse Jacobian for solving the Inverse Kinematics (assuming achievable poses), isn't possible for non-square Jacobians.  In these cases, which are typically iterative rather than analytic, an approximation is appropriate, which is achieved with the Pseudo Jacobian.  The Pseudo Jacobian is calculated by manipulating the Jacobian, which has the extra benefit of avoiding a case where two sequential limbs are locked straight out, also known as a singularity condition.

<script src="https://gist.github.com/mdiblasi/38c718158daeb0dda564.js"></script>






