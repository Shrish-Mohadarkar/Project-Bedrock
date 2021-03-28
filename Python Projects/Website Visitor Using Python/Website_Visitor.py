# -*- coding: utf-8 -*-
"""
Created on Sun Mar 28 19:36:53 2021

@author: shris
"""

#Importing Necessary Libraries
import webbrowser
import time

#Creating counter variable
counter = 0

#Creating URL list
URLS = ["https://www.google.com","https://www.bing.com","https://www.gmail.com"]

#Creating loop logic:
while counter < 10:
    for url in URLS:
        webbrowser.open(url,new=0)
        time.sleep(10)
        counter += 1
        
else:
    pass
    