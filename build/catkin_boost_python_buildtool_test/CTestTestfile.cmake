# CMake generated Testfile for 
# Source directory: /home/banafshe/catkin_ws/src/catkin_boost_python_buildtool/catkin_boost_python_buildtool_test
# Build directory: /home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_catkin_boost_python_buildtool_test_nosetests_test.test.py "/home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test/test_results/catkin_boost_python_buildtool_test/nosetests-test.test.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test/test_results/catkin_boost_python_buildtool_test" "/usr/bin/nosetests3 -P --process-timeout=60 /home/banafshe/catkin_ws/src/catkin_boost_python_buildtool/catkin_boost_python_buildtool_test/test/test.py --with-xunit --xunit-file=/home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test/test_results/catkin_boost_python_buildtool_test/nosetests-test.test.py.xml")
set_tests_properties(_ctest_catkin_boost_python_buildtool_test_nosetests_test.test.py PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/banafshe/catkin_ws/src/catkin_boost_python_buildtool/catkin_boost_python_buildtool_test/CMakeLists.txt;34;catkin_add_nosetests;/home/banafshe/catkin_ws/src/catkin_boost_python_buildtool/catkin_boost_python_buildtool_test/CMakeLists.txt;0;")
subdirs("gtest")
