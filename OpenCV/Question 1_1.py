import cv2
img = cv2.imread("astronaut.jpg")
img = cv2.resize(img,(int(img.shape[1]/4),int(img.shape[0]/4)))

gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
bnw = cv2.threshold(gray,75,255,cv2.THRESH_BINARY)[1]

cv2.imshow("me",img)
cv2.waitKey(0)
cv2.destroyAllWindows()

cv2.imshow("me",gray)
cv2.waitKey(0)
cv2.destroyAllWindows()

cv2.imshow("me",bnw)
cv2.waitKey(0)
cv2.destroyAllWindows()

