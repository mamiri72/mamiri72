FROM centos:7
MAINTAINER Mehdi Amiri <mamiri@vindicia.com>
RUN yum -y install epel-release
#RUN yum -y install python-pip
RUN yum -y install git git-lfs sudo nc curl mailx wget unzip yum-utils postfix
RUN yum -y install gcc openssl-devel bzip2-devel libffi-devel zlib-devel make which openssl
RUN wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz 
RUN tar xzf Python-3.9.6.tgz 
WORKDIR Python-3.9.6 
RUN ./configure --enable-optimizations
RUN make altinstall
RUN which python3.9
RUN python3.9 -V 
#RUN pip install --upgrade pip
#RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#RUN unzip awscli-bundle.zip
#RUN sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN which aws
RUN ln -s /usr/local/bin/aws /usr/bin/aws
RUN aws --version
RUN wget https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_linux_amd64.zip
RUN unzip ./terraform_1.1.5_linux_amd64.zip -d /usr/local/bin/
RUN wget https://releases.hashicorp.com/packer/1.7.10/packer_1.7.10_linux_amd64.zip
RUN unzip packer_1.7.10_linux_amd64.zip -d /usr/local/bin/
RUN terraform -v
RUN packer -v
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
RUN chmod 700 get_helm.sh
RUN ./get_helm.sh
RUN helm version --short
RUN echo
