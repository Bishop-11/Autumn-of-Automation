import math

# class implementing complex numbers
class complex:

    def __init__(self,r=0,i=0):
        self.real = r
        self.imaginary = i

    def __str__(self):
        if abs(self.imaginary)!=1:
            if self.imaginary>0:
                return "{} + {}i".format(self.real,self.imaginary)
            else:
                return "{} - {}i".format(self.real,abs(self.imaginary))
        else:
            if self.imaginary>0:
                return "{} + i".format(self.real)
            else:
                return "{} - i".format(self.real)

    def __add__(self,num2):
        ans = complex()
        ans.real = self.real + num2.real
        ans.imaginary = self.imaginary + num2.imaginary
        return ans

    def __sub__(self,num2):
        ans = complex()
        ans.real = self.real - num2.real
        ans.imaginary = self.imaginary - num2.imaginary
        return ans

    def __mul__(self,num2):
        ans = complex()
        ans.real = self.real*num2.real - self.imaginary*num2.imaginary
        ans.imaginary = self.real*num2.imaginary + self.imaginary*num2.real
        return ans

    def modulus(self):
        return math.sqrt(self.real**2 + self.imaginary**2)

    def display(self):
        if abs(self.imaginary)!=1:
            if self.imaginary>0:
                print("{} + {}i".format(self.real,self.imaginary))
            else:
                print("{} - {}i".format(self.real,abs(self.imaginary)))
        else:
            if self.imaginary>0:
                print("{} + i".format(self.real))
            else:
                print("{} - i".format(self.real))

    def conjugate(self):
        ans = complex()
        ans.real = self.real
        ans.imaginary = -1*self.imaginary
        return ans

    def inverse(self):
        ans = complex()
        m = self.modulus()
        ans.real = self.real/m
        ans.imaginary = (self.imaginary*(-1))/m
        return ans

    def add(self,num2):
        return self + num2

    def subtract(self,num2):
        return self - num2

    def multiply(self,num2):
        return self*num2


print("Enter four space seperated integers for test cases: ")
nums = list(map(int,input().split()))

a = complex(nums[0],nums[1])
b = complex(nums[2],nums[3])

# test cases
print(a)
print(b)
print(a+b)
print(a-b)
print(a*b)
a.display()
b.display()
c=b.add(a)
d=b.subtract(a) # subtract a from b
e=b.multiply(a)
print(c)
print(d)
print(e)
print(a.modulus())
print(a.inverse())
c.conjugate().display()

