# math for sqrt function
import math 

# returns True if the passed number is prime 
def isprime(num):
    end = int(math.sqrt(num))
    for i in range(2,end+1):
        if num%i==0:
            return False
    return True

# returns a list containing all digits digit prime numbers
def listprime(digits):
    lst = []
    
    start = 1
    for x in range(digits-1):
        start = start*10
    end = start*10-1

    if digits==1:
        start = 2
    
    for num in range(start+1,end,2):
        if isprime(num):
            lst.append(num)
    
    return lst
    

d = int(input("Enter the number of digits: "))
nums = listprime(d)
file = open("myFirstFile.txt",'w')

# checking twin primes in the list and writing to file
for num in nums:
    if num+2 in nums:
        file.write("{} {}\n".format(num,num+2))

file.close()
