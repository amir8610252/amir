a=[]
a.append(input().split())
j=int(a[0][0])
k=int(a[0][1])
b=[]
b.append(input().split())
sum=0
x=0
y=0
for i in range(j):
    if sum<k:
        sum+=int(b[0][i])
    elif sum>k:
        if sum-int(b[0][x])>k:
            sum-=int(b[0][y])
            x+=1
    y+=1
print(sum)

