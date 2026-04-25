# Vehicle Interfaces
ROS2 Interfaces for Vehicle internal information management. Mainly, it provides interfaces for control status and vehicle control commands.
## Folder Structure
* **`msg/`**: Deploy custom interfaces for the management of vehicle control commands such as movements flags, control variables, vehicle speed and steering, etc.
* **`srv/`**: Deploy custom interfaces for specific control modules.
## Installation
```bash
cd ros2_ws
git clone https://github.com/lsiteam/vehicle_interfaces.git
# Build the package
colcon build
