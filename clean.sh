docker rmi $(docker images | grep none| cut -d ' ' -f48)
