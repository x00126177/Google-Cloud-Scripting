1. Steps executed: 
	i.  Build Dockerfile
	ii.  Write helloworld.sh
		a.  Echo "Hello from Docker"
	iii.  Run "docker build ."
	iv.  Docker images
	v.  Docker run <IMAGE ID>
	vi.  Docker rm <image id> to remove docker container

2. 	
	i. we built the Dockerfile comprised of pulling the latest Ubuntu version, copied it to the new directory 
	ii. creates the hello world script where we echo'd "Hello from Docker"  
	iii. compiles the files of the current directory into a docker image
	iv. Docker images displays the docker images we have created
	v. Docker run, runs the image we just created using its ID
	vi. This removes the images if we run too many and they get annoying 

3. 	
	the container ran our "helloworld.sh" script that echo'd "Hello from Docker"

4.
	- Docker containers are isolated from the host FS
	- i've learned how to create a dockerfile comprising of any Linux OS I need
	- run it from a script in my directory
	- show all the Docker images i have on my machine
	- how to remove images after i've ran them
	
