FROM debian:bookworm-slim

ARG TARGETARCH

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

# INSTALLATION
RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y --no-install-recommends \
        curl \
        direnv \
        git \
        gnupg2 \
        make \
        python3 \
        python3-pip \
        rsync \
        software-properties-common \
        vagrant \
        wget && \
    # DOCKER ###################################################################
    install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc && \
    echo "deb [arch=${TARGETARCH} signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian bookworm stable" > /etc/apt/sources.list.d/docker.list && \
    apt update && \
    apt install --no-install-recommends -y docker-ce docker-ce-cli containerd.io && \
    # ANSIBLE ##################################################################
    apt install -y ansible && \
    pip3 install --break-system-packages ansible-lint yamllint molecule molecule-plugins[docker] && \
    ansible-galaxy collection install --collections-path /usr/lib/python3/dist-packages/ansible_collections -U \
        ansible.utils \
        ansible.posix \
        community.general \
        community.docker && \
    # CLEAN UP #################################################################
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/* /root/.ansible

# COMMAND
CMD ["bin/bash"]
