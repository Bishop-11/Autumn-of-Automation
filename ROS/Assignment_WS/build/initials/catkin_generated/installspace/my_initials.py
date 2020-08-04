#!/usr/bin/env python2
import rospy
from geometry_msgs.msg import Twist

def cmd_c(x,y,z,a,b,c):
	cmd = Twist()
	cmd.linear.x = x
	cmd.linear.y = y
	cmd.linear.z = z
	cmd.angular.x = a
	cmd.angular.y = b
	cmd.angular.z = c
	return cmd


def letter_b():
	pub = rospy.Publisher("/turtle/turtle1/cmd_vel",Twist, queue_size = 5)
	rospy.init_node("initials_commands", anonymous = True)
	rate = rospy.Rate(1)

	
	cmds = []

	cmd = cmd_c(0.0,0.0,0.0,0.0,0.0,0.0)
	cmds.append(cmd)

	cmd = cmd_c(1.5,0.0,0.0,0.0,0.0,0.0)
	cmds.append(cmd)

	cmd = cmd_c(3.0,0.0,0.0,0.0,0.0,3.1415)
	cmds.append(cmd)

	cmd = cmd_c(1.5,0.0,0.0,0.0,0.0,0.0)
	cmds.append(cmd)

	cmd = cmd_c(-1.5,0.0,0.0,0.0,0.0,0.0)
	cmds.append(cmd)

	cmd = cmd_c(-3.0,0.0,0.0,0.0,0.0,3.1415)
	cmds.append(cmd)

	cmd = cmd_c(-1.5,0.0,0.0,0.0,0.0,0.0)
	cmds.append(cmd)

	cmd = cmd_c(0.0,0.0,0.0,0.0,0.0,1.5708)
	cmds.append(cmd)

	cmd = cmd_c(-3.9,0.0,0.0,0.0,0.0,0.0)
	cmds.append(cmd)

	cmd = cmd_c(0.0,0.0,0.0,0.0,0.0,-1.5708)
	cmds.append(cmd)
		
	for cmd in cmds:
		rospy.loginfo(cmd)
		pub.publish(cmd)
		rate.sleep()


if __name__ == '__main__':
    try:
        letter_b()
    except rospy.ROSInterruptException:
        pass 


