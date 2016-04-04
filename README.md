# GNU Radio Dockerfile
GNU Radio with UHD via PyBOMBS Dockerfile

Docker 101
----------

Does your docker daemon run? I suppose you have systemd and that you are member of the
docker group (or call it as root).

$ systemctl start docker.service

Does docker run now?

$ docker info

Do you have any images?

$ docker images

Do you have any containers?

$ docker ps -a

How do I kill/remove containers/images?

$ docker kill 'container name/id'  
$ docker rm 'container name/id'  
$ docker rmi 'image name/id'

Any questions?

$ man docker  
$ docker help

Pull docker image
----------------

First, go on https://hub.docker.com/r/stwunsch/docker-pybombs-gnuradio/ and
look for the available image tags, e.g., 'v3.7.9.1-145-g5e383b0b'. Then, pull
the docker image with following command.

$ docker pull stwunsch/docker-pybombs-gnuradio:'image tag'

Run docker image without GUI
----------------------------

Simply run following command.

$ docker run --rm -ti stwunsch/docker-pybombs-gnuradio:'image tag'

Run docker image with X forwarding
----------------------------------

This should work on most Linux X server machines.

$ docker run --rm -ti -e DISPLAY -v $HOME/.Xauthority:/root/.Xauthority \
    --net=host stwunsch/docker-pybombs-gnuradio:'image tag'
