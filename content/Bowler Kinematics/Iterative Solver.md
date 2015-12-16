---
title: Iterative Solver
step: 3
layout: post
---

##Forward Kinematics
Kinematic models are generally split into two halfs: Forward and Inverse.  Forward Kinematic models are used to determine the position and orientation of the robot end effector in terms of the joint link lengths and angles.  The basic robot limb can be an arm with a gripper/manipulator, a leg with a foot or even a wheel.  Link lengths, offsets and angles, when analyzed, give one possible stance in 3D space (assuming rigid or semi-rigid hardware); this means it can be absolutely and directly solved for.  In standard forward kinematic models there's no need for recursive or iterative solvers, unlike some Inverse Kinematics, which will be covered in the next section.

##Inverse Kinematics
The Inverse Kinematics model is used to determine the required joint angles or conditions of the robotic arm in order to place the end effector at a desired position and orientation in 3D space.  Deriving the inverse kinematics of a system are typically much more difficult than computing the forward kinematics.  For simple examples, it can be directly solved using a number of analytic approaches, assuming the Degrees of Freedom (DOF) of the end effector equals the DOF of the system.  For example, a 2 link/DOF robot arm can only place its end effector in 2 DOF, within the combined reachable range of both of the limbs, attempting to place the end tip outside of this area is impossible.  The orientation of that tool tip may also be unachievable - trying to position the tool tip can quickly overconstrain the system.  This planar system is an example where it's possible to overconstrain the end effector based on the system capabilities.  Having more degrees of freedom certainly means more flexibility, and more of a chance to directly position and orient the end effector specifically as needed.