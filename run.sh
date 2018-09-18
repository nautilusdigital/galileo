docker rmi galileo-node raiblocks-node -f

docker kill $(docker ps -q)

git submodule update --init --recursive

docker/node/build.sh live

docker run -d -p 7011:7011/udp -p 7011:7011 -p 7012:7012 -v ${pwd}:/root galileo-node:latest

# curl -d '{"action": "block_count"}' localhost:7076
