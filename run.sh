docker kill $(docker ps -q)

git submodule update --init --recursive

docker/node/build.sh live

docker run -d -p 7075:7075/udp -p 7075:7075 -p 7076:7076 -v ${pwd}:/root raiblocks-node:latest

# curl -d '{"action": "block_count"}' localhost:7076
