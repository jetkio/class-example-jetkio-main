import re

string = "ab-12@123g.sub8.edu"
pattern = "Write your regular expressions here"

if re.search(pattern, string):
    print("found it")
else:
    print("did not find it")

print(re.search(pattern, string))