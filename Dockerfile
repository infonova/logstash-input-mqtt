FROM docker.elastic.co/logstash/logstash:7.16.3

WORKDIR /usr/share/logstash/bin
RUN curl -L https://github.com/infonova/logstash-input-mqtt/releases/download/v0.1.5/logstash-input-mqtt-0.1.5.gem --output logstash-input-mqtt-0.1.5.gem
RUN ./logstash-plugin install logstash-input-mqtt-0.1.5.gem
