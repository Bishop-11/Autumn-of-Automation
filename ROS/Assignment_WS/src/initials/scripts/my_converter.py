#!/usr/bin/env python
 
import rospy
from math import atan2,asin
from initials.msg import Quaternion_Angles
from initials.msg import Euler_Angles

def Publisher(msg):
    
    q0=msg.quaternionX
    q1=msg.quaternionY
    q2=msg.quaternionZ
    q3=msg.quaternionW

    r = (180/3.14)*atan2(2*(q0*q1 + q2*q3),1-2*(q1*q1 + q2*q2))
    p = (180/3.14)*asin(2*(q0*q2-q3*q1))
    y = (180/3.14)*atan2(2*(q0*q3+q1*q2),1-2*(q3*q3+q2*q2))

    pub = rospy.Publisher('Eulers', Euler_Angles, queue_size=5)

    E=euler()
    E.roll = r 
    E.pitch = p
    E.yaw = y
    
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        pub.publish(E)
        rate.sleep()

    print(msg)

def Subscriber():
    rospy.init_node('my_convertor', anonymous=True)
    rospy.Subscriber('quaternion', Quaternion_Angles, Publisher)
    rospy.spin()

if __name__ == '__main__':
    Subscriber()
