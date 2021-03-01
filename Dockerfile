FROM osrf/ros:melodic-desktop-full

WORKDIR /root

# install dependacies
RUN apt-get -qq update && \
    apt-get -qq install -y \
        python-catkin-tools \
        ros-melodic-mav-msgs \
        libsdl-image1.2-dev \
        python-tk \
        ros-melodic-imu-filter-madgwick

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
