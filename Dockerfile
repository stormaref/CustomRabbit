FROM rabbitmq:3.8-management

RUN apt-get update && \
apt-get install -y wget unzip

RUN wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez -O rabbitmq_delayed_message_exchange-3.8.0.ez
RUN mv rabbitmq_delayed_message_exchange-3.8.0.ez plugins/
RUN ls /plugins
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange
