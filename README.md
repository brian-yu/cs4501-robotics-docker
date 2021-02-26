# CS4501 Robotics Docker Setup

![Screenshot](./example.png)

## Prerequisites
You must have [Docker](https://www.docker.com/get-started) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

## Quickstart
- `git clone git@github.com:brian-yu/cs4501-robotics-docker.git`
- `cd cs4501-robotics-docker`
- `git clone https://github.com/less-lab-uva/CS4501-Labs.git`
- `docker-compose up --build`
- Go to http://localhost:8080/vnc.html in your browser
- In a new terminal tab:
  - `docker-compose exec ros bash`
  - `cd CS4501-Labs/lab4_ws`
  - `catkin build`
  - `source devel/setup.bash`
  - `roslaunch flightcontroller fly.launch`
- In another terminal tab:
  - `docker-compose exec ros bash`
  - `cd CS4501-Labs/lab4_ws`
  - `source devel/setup.bash`
