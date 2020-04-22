#!/usr/bin/env bash

if [ -f /etc/debian_version ]; then
    echo "Detected a Debian based system"

    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -


    sudo apt update
    sudo apt -y upgrade
    sudo apt -y install docker jq grc direnv \
        python-pip \
        python3-pip \
        apt-transport-https \
        ca-certificates \
        gnupg \
        gnupg-agent \
        software-properties-common

    sudo apt -y install google-cloud-sdk kubectl

    # Install Skaffold
    curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64
    chmod +x skaffold
    sudo mv skaffold /usr/local/bin

    # Install minikube
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_1.8.1-0_amd64.deb \
        && sudo dpkg -i minikube_1.8.1-0_amd64.deb

#     # Docker in gLinux
#     sudo apt remove docker-engine docker-runc docker-containerd
#     sudo glinux-add-repo docker-ce-"$(lsb_release -cs)"
#     sudo apt update
#     sudo apt -y install docker-ce
#     sudo service docker stop
#     sudo ip link set docker0 down
#     sudo ip link del docker0
#     cat <<EOF | sudo tee /etc/docker/daemon.json
# {
#   "data-root": "/usr/local/google/docker",
#   "bip": "192.168.9.1/24",
#   "storage-driver": "overlay2",
#   "debug": true,
#   "registry-mirrors": ["https://mirror.gcr.io"]
# }
# EOF
#     sudo service docker start
#     sudo addgroup docker
#     sudo adduser $USER docker



    # curl -sfL https://direnv.net/install.sh | bash

else
    echo "Did not detect a know Linux OS - it might be Linux just never setup for it"

fi
