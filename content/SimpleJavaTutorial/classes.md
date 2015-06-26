---
title: Clases
step: 4
layout: post
---

Classes are what contains all your executeable code in Java. We will make HelloWorld as a beginning example of how 
classes work. Make a document and save it as `HelloWorld.java`.

    public class HelloWorld
    {
      public static void main(String[] args)
      {
        System.out.println("Hello World");
      }
    }

The class name `HelloWorld` should match the name of the file (e.g. `HelloWorld.java`). For any program that you want to 
run, a `main` class is neccessary. All `main` methods are written as seen above:

        public static void main(String[] args)
        {
            //Do something here
        }

Sometimes there is a constructor staement, which is intialized in the main method. The construcor is a public method that
shares the name as the class.

        public class HelloWorld
        {
            public void HelloWorld()
            {
                System.out.println("Hello World");
            }
            public static void main(String[] args)
            {
                HelloWorld hw = new HelloWorld();
            }
        }

Constructors are often used. But now you know the very basics of java and can start putting everything you have learned together.
