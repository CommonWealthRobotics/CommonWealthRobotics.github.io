---
title: For Loops
step: 2
layout: post
---

##Let's Learn Loops!##

###The For Loop###

To begin learning for loops in Java, let's start a simple project to help you see some applications for for loops.
We will be looking at how a for loop can help us list all odd numbers between 1 - 1001. To do this we need to set an
integer, or i, to equal 1, and make sure the for loop stops looping when our condition, i equals 1001, is met, but not 
before, and to make sure that only the odd numbers are being recorded we need to increment i by 2 each time.

<script src="https://gist.github.com/madhephaestus/8a06a5fd3f94c309ed78.js"></script>

We now have created a for loop that prints out all odd numbers between 1 and 1001. `int i = 1` sets the value of `integer`
i to 1. `i <= 1001` sets our condition for the for loop. It means that as long as `integer` i is less than or equal to
1001 the for loop will continue to run and will stop as soon as that condition is no longer true. `i+=2` will increment
`integer` i by 2, so that when the for loop runs once the value of i will now be 3, then 5, then 7, and so on, allowing 
for only the odd numbers to be printed.

