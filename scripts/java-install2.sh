#!/bin/bash

set -e

CONTAINER_ID=$1
LIBRARY_NAME=$(ctx node properties lib_name)

   set +e
     java=$(sudo docker exec -it ${CONTAINER_ID} which java)
   set -e
   if [[ -z ${java} ]]; then
      sudo docker exec -it ${CONTAINER_ID} apt-get update
      sudo docker exec -it ${CONTAINER_ID} apt-get -y install ${LIBRARY_NAME}
   fi
        

