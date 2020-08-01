#rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- "[]" "[]"

import rospy
# from turtlesim import geometry_msgs

def letter_b():
    cmds = rospy.Publisher("/turtle/turtle1/cmd_vel", geometry_msgs/Twist, queue_size = 5)
    rospy.init_node("my_initials", anonymous = True)
    
    while not rospy.is_shutdown():
        cmd1 = "[2.0,0.0,0.0]"
        rospy.loginfo(cmd1)
        pub.Publish(cmd1)


if __name__ == '__main__':
    try:
        letter_b()
    except rospy.ROSInterruptException:
        pass 


