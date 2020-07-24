# imports
import numpy as np
import cv2,time

video = cv2.VideoCapture("Lionel Messi.mp4")

a=1

while True:
    a+=1
    check,frame = video.read()

    gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)

    ret,thresh = cv2.threshold(gray,230,255,cv2.THRESH_BINARY_INV)

    contours,image = cv2.findContours(thresh,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)

    #shape detection
    for cnt in contours:
        approx = cv2.approxPolyDP(cnt,0.001*cv2.arcLength(cnt,True),True)
        

        sides = len(approx)
        if sides>25:
            cv2.drawContours(frame,[approx],0,(255,0,0),3)
        #print("Sides: ",sides)

        app = approx.ravel()

        
    cv2.imshow("capturing",thresh)
    cv2.imshow("",frame)
    

    key = cv2.waitKey(15)
    if key == ord("a"):
        break

print("No of frames captured:",a)
video.release()
cv2.destroyAllWindows()
