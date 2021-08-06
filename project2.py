with open('sound.mp3', "rb") as f:

    data=(list(f.read()))
print('Please Enter the number of moving average')
n=input()
def average(data,n):
    v=[]
    a=[]
    for r in range(int(n/2)):
        v.append(0)
    for c in data:
        v.append((c))

    for i in range(len(data)):
        x=0
        s=0
        while(x<int(n/2)):
            s=s+v[i+x]
            x=x+1
        a.append(int(s/n))
    for r in range(int(n/2)):
        v.append(0)
    b=bytes(v)
    return b


with open('sound1.mp3', "wb") as s:

    s.write(average(data,int(n)))

# sound1 is the averaged  mp3 file