import cv2
img = cv2.imread("astronaut.jpg")
img = cv2.resize(img,(int(img.shape[1]/4),int(img.shape[0]/4)))

c,d  = cv2.pencilSketch(img, sigma_s=100, sigma_r=0.5, shade_factor=0.02) 

cv2.imshow("astronaut",img)
cv2.waitKey(0)
cv2.destroyAllWindows()

cv2.imshow("sketch",c)
cv2.waitKey(0)
cv2.destroyAllWindows()

