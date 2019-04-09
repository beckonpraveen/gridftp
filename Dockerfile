FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install make
RUN apt-get -y install vim
RUN apt-get -y install apt-transport-https
RUN wget http://toolkit.globus.org/ftppub/gt6/installers/repo/globus-toolkit-repo_latest_all.deb
RUN dpkg -i globus-toolkit-repo_latest_all.deb
RUN apt-get update
RUN apt-get -y install globus-gridftp
RUN apt-get -y install globus-gsi
RUN apt-get -y install globus-data-management-server
RUN apt-get -y install globus-data-management-client
RUN apt-get -y install myproxy
RUN apt-get -y install myproxy-server
RUN apt-get -y install myproxy-admin
RUN apt-get -y install globus-simple-ca
