---
title: If Statements
step: 5
layout: post
---

##Conditional Statements##

###If Statements###

If statements check to see if a conditional statement is true or false. If the result of a conditional statement
returns true, it executes the code within its body. Lets look at a very quick example.

<script src="https://gist.github.com/MrMepper/d657bc18471be68a7a43.js"></script>

First, integer variable i is initialized to the value of 1. We then create an if statement that compares
the value of i to the value of 2. Since i holds 1, which is less than two, the if statement executes the code within
its block.

Following this we assign to i the value of 4 and execute the if statement with the same exact conditions as the one
before. Since the comparison "i < 2" returns false, the if statement does not run the code within its block. Let's write this in Java.

```
int i = 1;
if (i < 2) {
  System.out.println("When the first loop runs, i is less than 2");
}

i = 4;
if (i < 2) {
  System.out.pritnln("When the second loop runs, i is less than 2");
}
```

When running this code, this will be the output:

```
When the first loop runs, i is less than 2
```

When the first loop runs, then i = 1, which means the statement within the parenthesis is true. Therefore, the program prints the first statement.

When the second loop runs, then i = 4, which means the statement within the parenthenthesis is false. Therefore, the program does not print the second statement.
