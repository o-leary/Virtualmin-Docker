FROM ubuntu:noble
USER root

RUN apt-get update && apt-get install --no-install-recommends -y curl nano sudo ca-certificates iproute2 net-tools

#RUN sudo sh -c "$(curl -fsSL https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh)" -- --bundle LAMP --force

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
