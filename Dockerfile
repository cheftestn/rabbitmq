FROM ubuntu:latest
MAINTAINER Veerendra <veeru538@gmail.com>
RUN apt-get update && apt-get -y -q install wget logrotate
RUN wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
RUN apt-key add rabbitmq-signing-key-public.asc
RUN echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list
RUN apt-get update
RUN apt-get -y -q install rabbitmq-server
RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management
RUN echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config
# Define mountable directories.
VOLUME ["/var/log/rabbitmq/"]
EXPOSE 5672 15672
ENTRYPOINT ["/usr/sbin/rabbitmq-server"]
