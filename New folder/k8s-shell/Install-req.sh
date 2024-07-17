#!/bin/bash
USER_ID=$(id -u)

if [$USER_ID -ne 0]
then 
    echo "Please switch to root user to perform this activity"
    exit 1
else 
    echo " Youre a super user" 
fi


#Installing Kubectl tool
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
mv kubectl /usr/local/bin/kubectl

#Install Aws Cli tool 
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

#Install EKS CTL 

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
echo "eksctl version"


