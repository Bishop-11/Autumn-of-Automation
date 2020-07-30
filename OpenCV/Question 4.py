# imports
import numpy as np
import cv2

img = cv2.imread('S1.jpg')
img2 = cv2.imread('S1.jpg')

img = cv2.resize(img,(500,500))
img2 = cv2.resize(img2,(500,500))

img2 = cv2.cvtColor(img2,cv2.COLOR_BGR2GRAY)
ret,thresh = cv2.threshold(img2,175,255,cv2.THRESH_BINARY_INV)

cv2.imshow("original",img)
cv2.waitKey(0)
cv2.destroyAllWindows()

cv2.imshow("gray",img2)
cv2.waitKey(0)
cv2.destroyAllWindows()

cv2.imshow("Black and White",thresh)
cv2.waitKey(0)
cv2.destroyAllWindows()


contours,image = cv2.findContours(thresh,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
font = cv2.FONT_HERSHEY_COMPLEX

#shape detection
for cnt in contours:
    approx = cv2.approxPolyDP(cnt,0.01*cv2.arcLength(cnt,True),True)
    cv2.drawContours(img,[approx],0,(255,0,0),3)

    sides = len(approx)
    print("Sides: ",sides)

    app = approx.ravel()

    X=0
    Y=0
    for i in range(len(app)):
        if i%2==0:
            X+=app[i]
        else:
            Y+=app[i]

    shape = ""     
    if sides==3:
        shape = "Triangle"
    elif sides==4:
        shape = "Square"
    elif sides==5:
        shape = "Pentagon"
    elif sides==6:
        shape = "Hexagon"
    elif sides==7:
        shape = "Heptagon"
    elif sides==8:
        shape = "octagon"
    else:
        shape = "Circle"
        
    print("centre at:",X/sides,Y/sides)
    txt = "{} at {},{} ".format(shape,int(X/sides),int(Y/sides))

    cv2.putText(img,txt,(int(X/sides)-150,int(Y/sides)),font,1,(0))




cv2.imshow("Detected",img)
cv2.waitKey(0)
cv2.destroyAllWindows()




