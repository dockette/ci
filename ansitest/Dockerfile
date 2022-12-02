FROM debian:bullseye-slim

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
        software-properties-common \
        vagrant \
        python3 \
        python3-pip \
        wget && \
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list.d/ansible.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt update && \
    apt install -y ansible && \
    pip3 install ansible-lint yamllint molecule molecule-docker && \
    ansible-galaxy collection install --collections-path /usr/lib/python3/dist-packages/ansible_collections community.docker -U && \
    # CLEAN UP #################################################################
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable" && \
    apt update && \
    apt install --no-install-recommends -y docker-ce docker-ce-cli containerd.io && \
    # CLEAN UP #################################################################
    apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/* /root/.ansible

# COMMAND
CMD ["bin/bash"]
