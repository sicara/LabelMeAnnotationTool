#!/bin/bash

docker run \
--name labelme \
-p 8080:80 \
-p 443:443 \
-d \
--entrypoint "/bin/bash" \
-t labelme

# restart apache inside the container
docker exec labelme service apache2 restart
