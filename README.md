## Springboot Docker image

1. Build Docker image

```commandline
docker build  -t sunilrai7607/springboot-aws-docker  --build-arg version=1.0.0 .
```

2. Run the docker image
```commandline
docker run -p 8080:8080 sunilrai7607/springboot-aws-docker
```
3. Push the docker image into docker hub
```commandline
dokcer push sunilrai7607/springboot-aws-docker
```
4. pull image from docker hub
```commandline
docker pull sunilrai7607/springboot-aws-docker
```
5. Remove from container

```commandline
docker container rm <contianer-id>
```

```commandline

docker ps -a --format "table {{.ID}}\t{{.Status}}\t{{.Names}}"

docker inspect -a -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'

docker system prune

## To additionally remove any stopped containers and all unused images (not just dangling images), add the -a flag to the command:
docker system prune -a

## remove image
docker image rmi -f image-id

## container
docker inspect <container-id>

docker container rm <container-id>
```