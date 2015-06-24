---
title: "Lets Learn Loops"
step: 1
layout: post
---
##Let's Learn Loops!##
###The For Loop###
To begin learning for loops in Java let's start a simple project to help you see some applications for for loops. 
We will be looking at how a for loop can help us list all odd numbers between 1 - 1001. To do this we need to set an
integer, or i, to equal 1, and make sure the for loop stops looping when our condition, i equals 1001, is met, but not 
before, and to make sure that only the odd numbers are being recorded we need to increment i by 2 each time.

    for (int i = 1; i <= 1001; i += 2)
    {
      System.out.println(i);
    }

We now hav created a for loop that prints out all odd numbers between 1 and 1001. `int i = 1` sets the value of `integer`
i to 1. `i <= 1001` sets our condition for the for loop. It means that as long as `integer` i is less than or equal to
1001 the foor loop will continue to run and will stop as soon as that condition is no longer true. `i+=2` will increment
`integer` i by 2, so that when the for loop runs once the value of i will now be 3, then 5, then 7, and so on, allowing 
for only the odd numbers to be printed.

###A While Loop###
We will use the same project we did in the for loop example to learn how while loops work. So like in the for loop we 
need to have a conditional that need to be met `while` the loop runs. We can use the same condition we used in the 
previous example.

        int i = 1;
        while (int i <= 1001)
        {
        }

Now we cant just print out i, or it will not do anything other than print out 1 forever, but in the body of the loop,
or the space between the two curly braces `{}`, we can do something similar to what we did above with the for loops.

        int i = 1;
        while (int i <= 1001)
        {
            System.out.println(i);
            i+=2;
        }

You can see in the body we print out i and then increment it by two so that when the loop runs again it will print out
3, 5, 7, and so on. 
