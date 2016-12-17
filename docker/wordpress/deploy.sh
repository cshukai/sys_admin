docker run -v /var/lib/mysql --name=j_datastore -d busybox 
docker run --name wordpress-mysql --volumes-from j_datastore -e MYSQL_ROOT_PASSWORD=wordpressj -d mysql:latest
docker run --name wordpress_j --link wordpress-mysql:mysql -p 81:81  -d wordpress
docker run --name wordpress_j --link wordpress-mysql:mysql -p 8080:80  -d wordpress

#client
docker run -it --link wordpress-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"wordpressj"'