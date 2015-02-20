1) Setting up the project:
==========================
    #Set up a project with the following structure: 
        mkdir lamp
        cd lamp
        ./Dockerfile
        ./apache-config.conf
        ./www/index.ph

2) Building the container:
=========================
    #Once you have setup the project run:
        sudo docker build -t lamp  .

3) Getting it running rabbitmq-server:
======================================
        docker run -d -p 8080:80 lamp

    #Run rabbitmq-server w/ persistent shared host system  directories
    
        docker run -d -p 8080:80  -v <localsite-dir>:/var/www/site  lamp


4) To Connect instance using Shell:
===================================
        sudo docker exec -it  LAMP bash

5) To chek instance is running are not and stop / start container :
===================================================================
        docker ps -a

        docker stop <containerid/containername>

        docker start <containerid/containername>

6) To get logs in container:
============================
        docker logs <containerid/containername>

7) To get  container info :
==========================
        docker inspect <containerid/containername>

        sudo docker inspect --format='{{ .State.Running }}' <containerid/containername>

        sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' <containerid/containername>

        sudo docker inspect --format '{{.Name}} {{.State.Running}}' <containerid/containername>
