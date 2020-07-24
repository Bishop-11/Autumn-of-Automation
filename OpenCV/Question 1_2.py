import cv2,time

video = cv2.VideoCapture(0)

a=1

while True:
    a+=1
    check,frame = video.read()

    gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    cv2.imshow("capturing",gray)

    key = cv2.waitKey(1)
    if key == ord("a"):
        break

print("No of frames captured:",a)
video.release()
cv2.destroyAllWindows()

