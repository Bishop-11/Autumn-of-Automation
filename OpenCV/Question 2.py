import cv2,PIL
from matplotlib import pyplot as plt
import numpy as np

img = cv2.imread("T.jpg")

images = []

# translation
ind = [(75,75),(75,-75),(-75,-75),(-75,75)]
for x in range(4):
    X = ind[x][0]
    Y = ind[x][1]
    mat = np.float32([[1,0,X],[0,1,Y]])
    images.append(cv2.warpAffine(img,mat,(img.shape[1],img.shape[0])))
    cv2.imshow("first",images[x])
    cv2.waitKey(0)
    cv2.destroyAllWindows()
    
# rotation
ang = [-90,0,90,180]
for x in range(4):
    mat = cv2.getRotationMatrix2D((img.shape[1]/2,img.shape[0]/2),ang[x],1)
    images.append(cv2.warpAffine(img,mat,(img.shape[1],img.shape[0])))
    cv2.imshow("first",images[x+4])
    cv2.waitKey(0)
    cv2.destroyAllWindows()

# Blurring
images.append(cv2.blur(img,(5,5)))
cv2.imshow("first",images[8])
cv2.waitKey(0)
cv2.destroyAllWindows()

images.append(cv2.cvtColor(cv2.GaussianBlur(img,(5,5),0),cv2.COLOR_BGR2GRAY))
cv2.imshow("first",images[9])
cv2.waitKey(0)
cv2.destroyAllWindows()

images.append(cv2.medianBlur(img,5))
cv2.imshow("first",images[10])
cv2.waitKey(0)
cv2.destroyAllWindows

images.append(cv2.cvtColor(cv2.bilateralFilter(img,9,75,75),cv2.COLOR_BGR2GRAY))
cv2.imshow("first",images[11])
cv2.waitKey(0)
cv2.destroyAllWindows()

# plot
for x in range(12):
    plt.subplot(3,4,x+1)
    plt.imshow(images[x])
    plt.xticks([]), plt.yticks([])

plt.show()
