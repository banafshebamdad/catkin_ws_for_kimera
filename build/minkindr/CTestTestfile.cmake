# CMake generated Testfile for 
# Source directory: /home/banafshe/catkin_ws/src/minkindr/minkindr
# Build directory: /home/banafshe/catkin_ws/build/minkindr
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_minkindr_gtest_minkindr_tests "/home/banafshe/catkin_ws/build/minkindr/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/banafshe/catkin_ws/build/minkindr/test_results/minkindr/gtest-minkindr_tests.xml" "--return-code" "/home/banafshe/catkin_ws/devel/lib/minkindr/minkindr_tests --gtest_output=xml:/home/banafshe/catkin_ws/build/minkindr/test_results/minkindr/gtest-minkindr_tests.xml")
set_tests_properties(_ctest_minkindr_gtest_minkindr_tests PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/banafshe/catkin_ws/src/minkindr/minkindr/CMakeLists.txt;9;catkin_add_gtest;/home/banafshe/catkin_ws/src/minkindr/minkindr/CMakeLists.txt;0;")
subdirs("gtest")
