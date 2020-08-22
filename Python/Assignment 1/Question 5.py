# taking inputs
days = int(input("Enter the number of days: "))
prices = list(map(int,input("Enter space seperated prices: ").split()))

minv = [prices[0],0]
maxv = [prices[0],0]

# finding max and min prices with days 
for x in range(1,len(prices)):
    if prices[x]>maxv[0]:
        maxv[0] = prices[x]
        maxv[1] = x
    if prices[x]<minv[0]:
        minv[0] = prices[x]
        minv[1] = x

# finding max possible profit
if maxv[1]>minv[1]:
    print("Max Profit Possible: ",(maxv[0]-minv[0]))
    print("Buy on day: ",minv[1]+1)
else:
    a = [0,0]
    b = [0,0]

    for i in range(maxv[1]):
        if maxv[0]-prices[i]>a[0]:
            a[0] = maxv[0]-prices[i]
            a[1] = i

    for i in range(minv[1]+1,len(prices)):
        if prices[i]-minv[0]>b[0]:
            b[0] = prices[i]-minv[0]
            b[1] = i

    if a[0]>b[0]:
        print("Max Profit Possible: ",a[0])
        print("Buy on day: ",a[1]+1)
    else:
        print("Max Profit Possible: ",b[0])
        print("Buy on day: ",minv[1]+1)


