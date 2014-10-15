FROM ubuntu:14.04
# File Author / Maintainer
MAINTAINER Kyle Oliveira <kyle.oliveira@cornell.edu>
# Update the repository sources list
EXPOSE 8080
RUN apt-get update
RUN apt-get -y install vim curl git software-properties-common 
# These are the scripts we need, not the scripts we deserve.
ADD bin/rvm_bootstrap.sh /root/rvm_bootstrap.sh
ADD bin/java_bootstrap.sh /root/java_bootstrap.sh
ADD bin/set_up_rvm_user.sh /root/set_up_rvm_user.sh
RUN chmod +x /root/rvm_bootstrap.sh /root/java_bootstrap.sh
RUN /root/java_bootstrap.sh
RUN /root/rvm_bootstrap.sh
