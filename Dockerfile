########### Image file ###########
FROM kalilinux/kali-rolling:latest
##################################

########### proxy setting (required) ###########
#ENV http_proxy http://sample.proxy.com 
#ENV https_proxy http://sample.proxy.com 
################################################

########### update and install packages ###########
RUN apt-get update && \
    apt-get -y upgrade && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install kali-linux-core kali-linux-default kali-tools-web \
    build-essential python3 python3-pip python3-venv && \
    rm -rf /var/lib/apt/lists*
###################################################

########### create workspace ###########
RUN mkdir /root/workspace
WORKDIR /root/workspace 
ADD ./requirements.txt /root/workspace/
########################################

########### install packages by using pip ###########
RUN mkdir /root/.venvs/ 
RUN python3 -m venv /root/.venvs/attack 
RUN /root/.venvs/attack/bin/pip install --upgrade pip 
RUN /root/.venvs/attack/bin/pip install -r requirements.txt 
ADD . /root/workspace/
#####################################################