FROM centos:7
MAINTAINER sanjeetcpr92@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page282/pro.zip /var/www/html
WORKDIR /var/www/html
RUN unzip pro.zip
RUN cp -rvf pro-html/* .
RUN rm -rf pro.zip pro-html
RUN systemctl restart httpd
#CMD ["/usr/bin/httpd","-D","FOREGROUND"]
EXPOSE 80
