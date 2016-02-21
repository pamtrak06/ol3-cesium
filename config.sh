curdir=.
image_name="pamtrak06/ol3-cesium-ub14.04"
container_name="ol3-cesium"
exposed_ports="-P"
shared_volumes=""

id=$(docker ps | grep ${container_name} | cut -d ' ' -f1)
idx=$(echo "$(docker ps | grep ${image_name} | wc -l)+1" | bc)
if [ -n "$id" ]; then
  container_name=${container_name}_$idx
fi

command="./run.sh"
