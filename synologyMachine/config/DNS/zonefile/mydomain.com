$ORIGIN mydomain.com.
$TTL 86400
mydomain.com. IN SOA ns.mydomain.com. mail.mydomain.com. (
	13
	43200
	180
	1209600
	10800
)
gogs.mydomain.com.	86400	A	192.168.1.2
portainer.mydomain.com.	86400	A	192.168.1.2
docker-hosted.mydomain.com.	86400	A	192.168.1.2
docker-all.mydomain.com.	86400	A	192.168.1.2
jenkins.mydomain.com.	86400	A	192.168.1.2
nexus.mydomain.com.	86400	A	192.168.1.2
torrent.mydomain.com.	86400	A	192.168.1.2
home.mydomain.com.	86400	A	192.168.1.2
router.mydomain.com.	86400	A	192.168.1.1
mydomain.com.	NS	ns.mydomain.com.
ns.mydomain.com.	A	192.168.1.2
