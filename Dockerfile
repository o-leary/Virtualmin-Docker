FROM ubuntu:noble

RUN apt-get update && apt-get install --no-install-recommends -y curl nano


RUN apt-get clean && rm -rf /var/lib/apt/lists/*
    
EXPOSE 80 443 21 25 110 143 465 587 993 995 2122 10000 20000 53/udp 53/tcp

ENTRYPOINT ["/usr/bin/systemctl","default","--init"]
