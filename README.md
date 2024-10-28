# Virtualmin Docker

Virtualmin on Ubuntu Noble inspired by https://github.com/TheTechsTech/Virtualmin

Note: running multiple services inside a docker container is not generally recommended, and this will run privileged, but may be helpful to you in a dev environment if you really want to use docker.

Edit hostname in docker-compose.yml and timezone in Dockerfile then:
```
docker compose up -d
```
Curently you must still exec via the terminal the usual virtualmin install command:
```
sudo sh -c "$(curl -fsSL https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh)" -- --bundle LAMP
```
