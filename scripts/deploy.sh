sudo docker ps -a -q --filter "name=discovery" | grep -q . && docker stop discovery && docker rm discovery | true
sudo docker rmi 0826hihi/up3-discovery-test:latest
sudo docker pull 0826hihi/up3-discovery-test:latest
docker run -d -p 8761:8761 --name discovery 0826hihi/up3-discovery-test:latest
docker rmi -f $(docker images -f "dangling=true" -q) || true
