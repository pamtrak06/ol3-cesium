function usage {
  echo "Arguments: <order from host to container (h), from container to host (c)> <path from h or c> <path from c or h>"$
  echo "If argument 1=h, arg2=filename from host,    arg3=container path"$
  echo "If argument 1=c, arg2=filename in container, arg3=host path"$
}

if [ -z "$1" ] && [ -z "$2" ] && [ -z "$3" ]; then
  usage
fi

if [ "$1" = "c" ]; then
  docker cp ${container_name}:$2 $3
elif [ "$1" = "h" ]; then
  docker cp $2 ${container_name}:$3
else
  usage
fi

