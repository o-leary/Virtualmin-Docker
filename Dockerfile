FROM ubuntu:noble

RUN apt-get update && apt-get install --no-install-recommends -y curl nano sudo


RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
