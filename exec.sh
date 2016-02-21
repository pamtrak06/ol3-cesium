if [ -n "$1" ]; then
  docker exec -it ${container_name} bash -c "$1" 
else
  docker exec -it ${container_name} bash
fi
