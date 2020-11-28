# Kibana Stack

A docker-compose setup that spawns an ELK stack locally using custom Docker Images.

Start the stack with `make start`

> If you don't have access to Make, you'll need to build each Dockerfile before executing `docker-compose up`

`docker-compose.yml` currently provides 2 endpoints on starting the stack:
- [Elastic Search HTTP](http://localhost:9200/)
- [Kibana HTTP](http://localhost:8080/)

A Docker Network called `elkstack` is also started by the `docker-compose.yml` and all of the nodes are within it, meaning that you should be able to access the non-published ports by running a container and joining the network.