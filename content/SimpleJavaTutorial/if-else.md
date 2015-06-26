---
title: "If/Else Statements"
step: 3
layout: post
---
##If/Else Statements##
###If Statements###
If statements check to see if a conditional statement is true or not, and if it does it executes the code within its
body. Lets look at a very quick example.

    int i = 1;
    if (i < 2)
    {
      System.out.println("This is an if statement that works");
    }
    int i = 4;
    if (i < 2)
    {
      System.out.println("This is an if statement that doesn't works");
    }

So now that you can see how an if statement works lets, why dont you try a quick quiz.

        inx x = 2**2;
        if(x > 4)
        {
            System.out.println("Does this work?");
        }
        int i = 9;
        if(i % 2 == 1)
        {
            System.out.println("Does this work?");
        }

What will the above codes do? Which will print out the statement? 

**Hint:** `%` is modulation, it returns 0 if there is no remainder and a 1 if there is.

**Answers:** 
+ Problem 1 -> Does not print out the statement
+ Problem 2 -> Does print out the statement

###Else If Statements###
Else if statements are used as a fall back for if statements. When an if statements is false the else if statements 
are now evaluated for wether or not they are true. 

        inx x = 2**2;
        if(x > 4)
        {
            System.out.println("Does this work?");
        }
        else if(x % 2 == 0)
        {
            System.out.println("Does this work?");
        }

###Else Statements###
Else statements are used as a fall back for if statements. When an if statements is false and the else if statements 
are also false the else statement is always evaluated as true and what is in the body is always run.

        inx x = 2**2;
        if(x > 4)
        {
            System.out.println("Does this work?");
        }
        else if(x % 2 == 1)
        {
            System.out.println("Does this work?");
        }
        else 
        {
            System.out.println("Does this work?");
        }
