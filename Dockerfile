FROM ubuntu:noble

RUN apt-get update && apt-get install --no-install-recommends -y curl nano


RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/systemctl","default","--init"]
