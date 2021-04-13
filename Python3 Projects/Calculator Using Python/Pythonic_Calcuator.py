#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Apr 13 15:01:45 2021

@author: shrish
"""
#Importing math modules
import math

#Creating while loop
while True:
    
    print("\nChoose the Math Operation.\n\n\n0-Addition\n1-Substraction\n2-Multiplication\
          \n3-Division\n4-Modulo\n5-Raising to the power\n6-Logarithm\
          \n7-Sin\n8-Cosine\n9-Tangent\n10-Square Root")
          
    oper = input("\nPlease select your option from the menu: ")
    
    
#Implementing functionalities

#Using condition for addition
    if oper == "0":
        var1 = float(input("\nFirst Value : "))
        var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Addition Operation........")
        print("\nThe Result is:" + str(var1 + var2) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break
    
#Using condition for substraction
    elif oper == "1":
        var1 = float(input("\nFirst Value : "))
        var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Substraction Operation........")
        print("\nThe Result is:" + str(var1 - var2) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break
    
#Using condition for Mulltiplication
    elif oper == "2":
        var1 = float(input("\nFirst Value : "))
        var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Multiplication Operation........")
        print("\nThe Result is:" + str(var1 * var2) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break

#Using condition for Division
    elif oper == "3":
        var1 = float(input("\nFirst Value : "))
        var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Division Operation........")
        print("\nThe Result is:" + str(var1 / var2) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break

#Using condition for Modulo Division
    elif oper == "4":
        var1 = float(input("\nFirst Value : "))
        var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Modulo Operation........")
        print("\nThe Result is:" + str(var1 % var2) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break
        
#Using condition for Raising to the power
    elif oper == "5":
        var1 = float(input("\nFirst Value : "))
        var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Exponent Operation........")
        print("\nThe Result is:" + str(math.pow(var1, var2)) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break

#Using Logarithmic operation
    elif oper == "6":
        var1 = float(input("\nEnter the  Value : "))
        #var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Logarithmic Operation........")
        print("\nThe Result is:" + str(math.log(var1))+ "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break

#Using sin operation
    elif oper == "7":
        var1 = float(input("\nFirst Value : "))
        #var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Sin Operation........")
        print("\nThe Result is:" + str(math.sin(math.radians(var1))) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break
        

#Using cosine operation
    elif oper == "8":
        var1 = float(input("\nFirst Value : "))
        #var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Cosine Operation........")
        print("\nThe Result is:" + str(math.cos(math.radians(var1))) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break

#Using Tangent Operation
    elif oper == "9":
        var1 = float(input("\nFirst Value : "))
        #var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Tangent Operation........")
        print("\nThe Result is:" + str(math.tan(math.radians(var1))) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break
        
#Using Square Root Operation
    elif oper == "10":
        var1 = float(input("\nFirst Value : "))
        #var2 = float(input("\nSecond Value : "))

        print("\nAnalyzing variables........")
        print("\nConnecting to Python Kernel........")
        print("\nStarting Tangent Operation........")
        print("\nThe Result is:" + str(math.sqrt(var1)) + "\n")
        
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break
        
#Last operation-

    else:
        print("\nInvalid Option!! Please select Valid option from above")
        back = input("\nGo back to the commander menu(y/n)?")
        if back == "y":
            continue
        else:
            break