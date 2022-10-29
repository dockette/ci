FROM debian:bullseye-slim

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

# INSTALLATION
RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y --no-install-recommends \
        ansible \
        curl \
        direnv \
        git \
        gnupg2 \
        make \
        software-properties-common \
        vagrant \
        wget && \
    # CLEAN UP #################################################################
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable" && \
    apt update && \
    apt install --no-install-recommends -y docker-ce docker-ce-cli containerd.io && \
    # CLEAN UP #################################################################
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

# COMMAND
CMD ["bin/bash"]
