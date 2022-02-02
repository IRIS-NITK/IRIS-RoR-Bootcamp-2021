def split(n):
    print(n)
    dgts=[]
    while n!=0:
        dgts.append(n%10)
        n=n/10
        n=n.__round__()
        print(n)
    print(dgts)    


n=9234

print(n)
split(n)
