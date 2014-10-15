FROM ubuntu:14.04
# File Author / Maintainer
MAINTAINER Kyle Oliveira <kyle.oliveira@cornell.edu>
# Update the repository sources list
EXPOSE 8080
#Environment Variables
ADD bin/rvm_bootstrap.sh /root/rvm_bootstrap.sh
ADD bin/java_bootstrap.sh /root/java_bootstrap.sh
RUN chmod +x /root/rvm_bootstrap.sh /root/java_bootstrap.sh
CMD ["/root/java_bootstrap.sh"]
CMD ["/root/rvm_bootstrap.sh"]
