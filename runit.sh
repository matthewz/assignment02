

echo "Stopping tika server..."
docker rm -f  $(docker ps -a -q --filter ancestor=docker-tikaserver)
echo "Starting tika server..."
docker run -d -p 9998:9998 docker-tikaserver 

