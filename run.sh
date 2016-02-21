id=$(docker ps | grep ${container_name} | cut -d ' ' -f1)
if [ -n "$id" ]; then
  container_name=${container_name}
fi
docker run -dt --name ${container_name} $exposed_ports $shared_volumes ${image_name}

