cmake_minimum_required(VERSION 3.8)
project(vehicle_interfaces)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

set(msg_files
  # Control
  "msg/VehicleSpeed.msg"
  "msg/VehicleSteering.msg"
  "msg/VehicleWheelDistance.msg"
  "msg/OdometryScore.msg"
  "msg/CraftsScore.msg"
  "msg/VehicleMode.msg"
  "msg/AllowMovement.msg"
  "msg/AutoEnableSpeed.msg"
  "msg/AutoSpeedConstant.msg"
  "msg/MediaPath.msg"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES std_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
