#By Vikrant Tyagi <tyagivasu4@gmail.com>
#This Assignment create image and install of centos 6 
#Services to be installed 
	#Python 2.7
	#MongoDB - any version
	#Apache tomcat 7 - running on port 8080


FROM centos:centos6
RUN yum -y update; yum clean all

#install python
	RUN yum install -y centos-release-SCL
	RUN yum install -y python27


#install MongoDB
	RUN yum install mongodb-server; yum clean all


	

EXPOSE 8080

CMD [/bin/bash]