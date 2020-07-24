import cv2,time
video = cv2.VideoCapture(0)

a=1

while True:
    a+=1
    check,frame = video.read()

    c,d  = cv2.pencilSketch(frame, sigma_s=10, sigma_r=0.5, shade_factor=0.015)
    cv2.imshow("Pencil video",c)


    key = cv2.waitKey(1)
    if key == ord("a"):
        break

print("No of frames captured:",a)
video.release()
cv2.destroyAllWindows()
