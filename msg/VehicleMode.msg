# Semantically meaningful message for odometry score
uint8 MANUAL=0
uint8 STANLEY=1
uint8 MPC=2
uint8 HINF=3
uint8 CRAFTS=4
uint8 SCORE=5
uint8 REACTIVE=6

std_msgs/Header header # Time and frame information
uint8 mode             # Mode of operation to control the vehicle
