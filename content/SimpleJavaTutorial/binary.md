---
title: Binary
step: 0
layout: post
---

#Bits
Bits are a single value of 1 or 0 and are the basic thing a computer understands. Also known as true as 1 and false as 0, these values make up the basic building blocks of all computing. 

In the electrical world, applying a voltage to a a pin will make it go from false to true. This means Bits are very easy to store, move and read electrically. 

A bit represents 2 values, and so each bit you add together is in base 2. Most math in the 0-9 scale is in base 10, as in each unit is 10 times the last. In base 2, also known as binary, each unit is 2 times the last. Base 10 is hard to make electrical circuits understand, unlike binary, which is easy. 



#Bytes

A byte is a set of 8 bits. The selection of 8 bits to make the standard byte size was decided by convention and is now a standard of computer languages. A byte is a value of 0 - 255

* bit 0 = 1
* bit 1 = 2
* bit 2 = 4
* bit 3 = 8
* bit 4 = 16
* bit 5 = 32
* bit 6 = 64
* bit 7 = 128

And when you add all the bits together 

* 1+2+4+8+16+32+64+128 = 255

# Signed Bytes
In a signed byte, the top bit is read as a negative flag. The same amount of data is stored, just shifted by -128. 

* bit 0 = 1
* bit 1 = 2
* bit 2 = 4
* bit 3 = 8
* bit 4 = 16
* bit 5 = 32
* bit 6 = 64
* bit 7 = negative flag

And when you add all the bits together 

* (1+2+4+8+16+32+64)*(-1) = -127

or without the negative flag

* 1+2+4+8+16+32+64 = 127

#Practice

You can sharpen your binary skills with the [Cisco Binary Game](https://learningnetwork.cisco.com/docs/DOC-1803)

