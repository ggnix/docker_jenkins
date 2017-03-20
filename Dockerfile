FROM centos:latest
 
MAINTAINER Gleb Golubyatnikov
 
 # Jenkins install with setenv options
RUN yum -y install wget && \
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo && \
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key && \
yum -y install jenkins && \
yum -y install java && \
yum -y install net-tools && \
yum -y install epel-release && \
yum -y install ansible && \
yum -y install openssh-clients && \
yum -y install mercurial && \
yum -y install python-pip && \
 
ADD hello /root/.jenkins/jobs/hello
 
ENV CATALINA_OPTS="$CATALINA_OPTS -Xms2048m -Xmx6000m -XX:MaxPermSize=1024m -Duser.language=en -Duser.country=US"
 
CMD ["java", "-jar", "/usr/lib/jenkins/jenkins.war"]

