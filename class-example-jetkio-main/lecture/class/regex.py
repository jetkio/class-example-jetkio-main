import re

string = "The price of 2 phones is $199.89! But there is a $20.50 dollar discount!"
pattern = "[1-9][0-9]?[0-9]?."
prices = re.findall(pattern, string)

for x in prices:
    print(x)