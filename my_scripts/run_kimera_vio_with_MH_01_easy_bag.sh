#!/bin/bash

#
# Banafshe Bamdad, Mi Jun 7, 2023 09:53:59
#
# This script runs the required commands in parallel in order to run kimera_vio_ros with MH_01_easy.bag
# Usage: ./run_kimera_vio_with_MH_01_easy_bag.sh
# $ chod +x run_kimera_vio_with_MH_01_easy_bag.sh
#
roscore &
roslaunch kimera_vio_ros banafshe_kimera_vio_ros_euroc_bag.launch &
roslaunch pose_graph_tools posegraph_view.launch &
rviz -d $(rospack find kimera_vio_ros)/rviz/kimera_vio_euroc.rviz &
rosbag play --clock /home/banafshe/Documents/kimera/bag/MH_01_easy.bag
