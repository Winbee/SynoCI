# Goal

The goal of this project is to provide a basic infrastructure responsible for Continuious integration and delivery (CI/CD).

# What does it contains

- Gogs
- Nexus
- Jenkins
- Portainer

# How to config
## Docker with SSL
Docker communicates with HTTPS and SSL. The url to access the docker registry in Nexus need to have a certificate.

If this certificate is signed by a known autority, everything should be fine. However if it's self-signed certificate, Docker will shoot at you that the certificate come from an unknown autority and won't be able to do anything.

As stated on [stackoverflow](http://stackoverflow.com/questions/26710153/remote-access-to-a-private-docker-registry), you have to add your registry as an insecure registry in the docker service.

``` bash
# vim /etc/docker/daemon.json 
{
	"hosts": ["fd://"],
	"insecure-registries": ["docker-all.mydomain.com", "docker-hosted.mydomain.com"]
}
```

``` bash
$ sudo vim /lib/systemd/system/docker.service
#ExecStart=/usr/bin/dockerd
ExecStart=/usr/bin/dockerd -H fd://
```

``` bash
$ sudo systemctl stop docker
$ sudo systemctl daemon-reload
$ systemctl start docker
```

In synology; you have to change this:
``` bash
# vim /var/packages/Docker/etc/dockerd.json 
{
	"ipv6": true,
	"insecure-registries": ["docker-all.mydomain.com", "docker-hosted.mydomain.com"]
}
```

# Todo

DNS

Nginx redirection

Maven config

Npm/yarn config

Docker config

Certificate

Test with the proof project

double git

Security
- encrypt volume folder
- firewall
- MFA
- ssh

backup

