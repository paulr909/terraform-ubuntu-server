# Setup Notes
Domain Name: [https://theukdomain.uk/buy-a-domain/?domain=your-project.uk](https://theukdomain.uk/buy-a-domain/?domain=your-project.uk)

Log into ubuntu server.
```shell
ssh -i "~/.ssh/your-project-server-kp.pem" ubuntu@ec2-13-40-244-102.eu-west-2.compute.amazonaws.com
```

Change known host, usually delete the last in the list (if required).
```shell
sudo nano ~/.ssh/known_hosts
```

Create provision.sh file, copy contents and run on Ubuntu server:
```shell
sudo nano provision.sh
```
Run provision.sh to install required packages, you will be prompted to accept Y/N:
```shell
sudo sh provision.sh
```

## Install Docker on Ubuntu
[https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)

```shell
sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-cache policy docker-ce

sudo apt install docker-ce

sudo apt install docker-compose

docker-compose --version

sudo systemctl status docker
```

Add the docker-compose.yml file, then run inside your-project directory:
```shell
sudo docker-compose up -d --build
```

Continuous Integration / CD:
[https://packaging.python.org/en/latest/guides/publishing-package-distribution-releases-using-github-actions-ci-cd-workflows/](https://packaging.python.org/en/latest/guides/publishing-package-distribution-releases-using-github-actions-ci-cd-workflows/)
