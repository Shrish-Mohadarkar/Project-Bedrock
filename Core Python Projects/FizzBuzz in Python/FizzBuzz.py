#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Feb  8 18:04:31 2021

@author: shrish
"""

#FizzBuzz application in Python

#Creating For Loop
print("..........Initiating Execution.............")
for i in range(1,101):
    if i % 3 == 0 and i % 5 == 0:
        print(i,"FizzBuzz")
    elif i % 5 == 0:
        print(i,"Fizz")
    elif i % 3 == 0:
        print(i,"Buzz")
    else:
        print(i)
print("...........Completing Exectuion................")