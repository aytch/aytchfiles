FROM centos:latest

RUN yum install -y nginx ruby ruby-devel gcc make redhat-rpm-config
RUN /usr/bin/ruby -v; /bin/gem install -N unicorn sinatra
RUN mkdir /opt/app

ADD ./*.rb /opt/app

CMD /usr/bin/ruby /opt/app/hello.rb

