#By Vikrant Tyagi <tyagivasu4@gmail.com>
#This Assignment create image and install of centos 6 
#Services to be installed 
	#Python 2.7
	#MongoDB - any version
	#Apache tomcat 7 - running on port 8080


FROM centos:centos6
RUN yum -y update; yum clean all

#install java
	RUN	cd /opt/
	RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz"
	RUN tar xzf jdk-7u79-linux-x64.tar.gz

RUN cd /opt/jdk1.7.0_79/
RUN alternatives --install /usr/bin/java java /opt/jdk1.7.0_79/bin/java 2
RUN alternatives --config java
	

RUN alternatives --install /usr/bin/jar jar /opt/jdk1.7.0_79/bin/jar 2
RUN alternatives --install /usr/bin/javac javac /opt/jdk1.7.0_79/bin/javac 2
RUN alternatives --set jar /opt/jdk1.7.0_79/bin/jar
RUN alternatives --set javac /opt/jdk1.7.0_79/bin/javac

RUN java -version


RUN cd /tmp
RUN wget http://www.us.apache.org/dist/tomcat/tomcat-7/v7.0.75/bin/apache-tomcat-7.0.75.tar.gz


RUN tar xzf apache-tomcat-7.0.75.tar.gz
RUN mv apache-tomcat-7.0.75 /usr/local/tomcat7
RUN cd /usr/local/tomcat7


EXPOSE 7080

CMD [./bin/startup.sh]