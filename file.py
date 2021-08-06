import re
s=input()
a=re.search("'",s[0:s.index('#')])
if s[0]=='#' and a:
    print(1)
else:
    print(0)
