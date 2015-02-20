1) Setting up the project:
==========================
    #Set up a project with the following structure: 
        mkdir rabbitmq
        cd rabbitmq
        ./Dockerfile

2) Building the container:
=========================
    #Once you have setup the project run:
        sudo docker build -t rabbitmq  .

3) Getting it running rabbitmq-server:
======================================
        docker run -d -p 5672:5672 -p 15672:15672 rabbitmq

    #Run rabbitmq-server w/ persistent shared host system  directories
    
        docker run -d -p 5672:5672 -p 15672:15672 -v <log-dir>:/data/log -v <data-dir>:/data/mnesia rabbitmq


4) To Connect instance using Shell:
===================================
        sudo docker exec -it  rabbitmq bash

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
