docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker build -t geoserver .
docker run -it -p 8080:8080 geoserver
docker attach geoserver
