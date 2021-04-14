# -*- coding: utf-8 -*-
"""
Created on Wed Apr 14 10:13:58 2021

@author: shrish
"""

#Importing libraries
import webbrowser
import time

#Creating count variable
count = 0

#Creating URL's List
URLS = ['https://www.google.com','https://www.bing.com','https://www.gmail.com']
while count < 10:
    for url in URLS:
        webbrowser.open(url)
        time.sleep(10)
        count = count + 1

else:
    pass