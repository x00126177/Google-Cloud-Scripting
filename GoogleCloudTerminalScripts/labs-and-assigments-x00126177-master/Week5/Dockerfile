# pulling from the latest Ubuntu image
# as the base image for the helloworld image
# note - you could use any version of Ubuntu
# e.g. ubuntu:14.04
# or you could need fedora / Red hat
# E.g. FROM fedora:latest

FROM ubuntu:latest

# setting the working directory to WORKDIR 
# tells the container run-time to start executing
# from the root filesystem /

WORKDIR /

# copy helloworld.sh accross the FS boundary
# from the host(GCP) FS to the docker image FS
# therefore, if this image modified helloworld.sh
# the host FS helloworld.sh would not change
# Threrefore helloworld.sh lives in $HOME/EPA/Week5 on the host
# but lives in /helloworld.sh on the docker image FS

COPY helloworld.sh /

# when the container runs, it should execute
# the script helloworld.sh

CMD [ "./helloworld.sh"]
