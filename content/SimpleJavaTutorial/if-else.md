---
title: If/Else Statements
step: 3
layout: post
---

##If/Else Statements##
###If Statements###
If statements check to see if a conditional statement is true or false. If the result of a conditional statement
returns true, it executes the code within its body. Lets look at a very quick example.

<script src="https://gist.github.com/MrMepper/d657bc18471be68a7a43.js"></script>

First, integer variable i is initialized to the value of 1. We then create an if statement that compares
the value of i to the value of 2. Since i holds 1, which is less than two, the if statement executes the code within
its block.

Following this we assign to i the value of 4 and execute the if statement with the same exact conditions as the one
before. Since the comparison "i < 2" returns false, the if statement does not run the code within its block.

So now that you can see how an if statement works, why don't we try a quick quiz?

<script src="https://gist.github.com/MrMepper/488759f4f73554f96735.js"></script>

What will the above codes do? Which will print out the statement? 

**Hint:** `%` is modulation, it returns 0 if there is no remainder and a 1 if there is.

**Answers:** 
+ Problem 1 -> Does not print out the statement
+ Problem 2 -> Does print out the statement

###Else If Statements###
Else if statements are used as a fall back for if statements. When an if statements is false the else if statements 
are now evaluated for whether or not they are true.

<script src="https://gist.github.com/MrMepper/3df051b87c8dcff0f255.js"></script>

We initiate the value of x to "2**2", which is equal to 4. Since the comparison "x > 4" evaluates to false(because
4 > 4 is not true), the if statement passes on to the following else if statement.

Since "4 % 2 == 0" evaluates to true, the code block of the else if is executed.

###Else Statements###
Else statements are used as a fall back for all if and else if statements. When an if statement is false,
and the else if statements are also false, the else statement is always evaluated as true and what is in the body will
always run.

<script src="https://gist.github.com/MrMepper/0a39c7a463f24e8ebece.js"></script>
