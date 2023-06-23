#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/banafshe/catkin_ws/src/catkin_boost_python_buildtool/catkin_boost_python_buildtool_test"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/banafshe/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/banafshe/catkin_ws/install/lib/python3/dist-packages:/home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test" \
    "/usr/bin/python3" \
    "/home/banafshe/catkin_ws/src/catkin_boost_python_buildtool/catkin_boost_python_buildtool_test/setup.py" \
     \
    build --build-base "/home/banafshe/catkin_ws/build/catkin_boost_python_buildtool_test" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/banafshe/catkin_ws/install" --install-scripts="/home/banafshe/catkin_ws/install/bin"
