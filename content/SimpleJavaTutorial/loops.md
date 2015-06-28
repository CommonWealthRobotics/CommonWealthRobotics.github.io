---
title: Lets Learn Loops
step: 2
layout: post
---

##Let's Learn Loops!##
###The For Loop###
To begin learning for loops in Java, let's start a simple project to help you see some applications for for loops.
We will be looking at how a for loop can help us list all odd numbers between 1 - 1001. To do this we need to set an
integer, or i, to equal 1, and make sure the for loop stops looping when our condition, i equals 1001, is met, but not 
before, and to make sure that only the odd numbers are being recorded we need to increment i by 2 each time.

<script src="https://gist.github.com/MrMepper/831a897d58b1753f982f.js"></script>

We now have created a for loop that prints out all odd numbers between 1 and 1001. `int i = 1` sets the value of `integer`
i to 1. `i <= 1001` sets our condition for the for loop. It means that as long as `integer` i is less than or equal to
1001 the for loop will continue to run and will stop as soon as that condition is no longer true. `i+=2` will increment
`integer` i by 2, so that when the for loop runs once the value of i will now be 3, then 5, then 7, and so on, allowing 
for only the odd numbers to be printed.

###A While Loop###
We will use the same project we did in the for loop example to learn how while loops work. So like in the for loop we 
need to have a conditional that needs to be met `while` the loop runs. We can use the same condition we used in the
previous example.

<script src="https://gist.github.com/MrMepper/c845ff946e0e2882b02e.js"></script>

Now we can't just print out i, or it will not do anything other than print out 1 forever, but in the body of the loop,
or the space between the two curly braces `{}`, we can do something similar to what we did above with the for loops.

<script src="https://gist.github.com/MrMepper/126c8a313cd77460232b.js"></script>

You can see in the body we print out i and then increment it by two so that when the loop runs again it will print out
3, 5, 7, and so on. 

###Do-While Loops###
We can do the same thing with do-while loops, which are very similar to while loops.

<script src="https://gist.github.com/MrMepper/4115a1e6fcee1738d210.js"></script>

So instead of putting the information of what to do inside the body of a while loop, you use a do statement, which is 
looped over until the condition of the while loop is no longer true.
