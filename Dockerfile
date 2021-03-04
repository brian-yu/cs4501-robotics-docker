FROM osrf/ros:melodic-desktop-full

WORKDIR /root

# install dependencies
RUN apt-get -qq update && \
    apt-get -qq install -y \
        python-catkin-tools \
        ros-melodic-mav-msgs \
        libsdl-image1.2-dev \
        python-tk \
        ros-melodic-imu-filter-madgwick \
        python-pip

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

RUN python2 -m pip install --upgrade pip
RUN python2 -m pip install keras==2.3.0
RUN python2 -m pip install tensorflow==1.14
RUN python2 -m pip install sklearn
