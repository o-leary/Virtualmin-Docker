FROM ubuntu:noble
USER root
ENV TZ="Pacific/Auckland"

##RUN echo 'root:root' | chpasswd
RUN printf '#!/bin/sh\nexit 0' > /usr/sbin/policy-rc.d
RUN apt-get update && apt-get install --no-install-recommends -y curl nano sudo ca-certificates iproute2 net-tools systemd systemd-sysv dbus dbus-user-session
RUN printf "systemctl start systemd-logind" >> /etc/profile

#RUN sudo sh -c "$(curl -fsSL https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh)" -- --bundle LAMP --force

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/sbin/init"]
