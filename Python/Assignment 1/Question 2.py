# for even number of digits in palindrome
def for_even(n,d):
    s = str(n)
    ns = str(int(s[:int(d/2)])+1)
    nf = ns[:]
    for i in range(len(ns)):
        nf = nf+ns[len(ns)-1-i]
    return int(nf)
    
# for odd number of digits in palindrome
def for_odd(n,d):
    s = str(n)
    nf = ''
    ns = ''

    if s[int((d-1)/2)] == '9':
        ns = str(int(s[:int((d-1)/2)])+1)
        nf = ns[:] + '0'
    else:
        ns = str(int(s[:int((d+1)/2)])+1)
        nf = ns[:]
        ns = ns[:-1]
        
    for i in range(len(ns)):
        nf = nf+ns[len(ns)-1-i]
    return int(nf)


num = int(input("Enter the palindrome number: "))
digits = len(str(num))

if digits%2==0:
    print("The next palindrome number is:",for_even(num,digits))
else:
    print("The next palindrome number is:",for_odd(num,digits))
