FROM docker.elastic.co/logstash/logstash:5.6.3
RUN logstash-plugin install logstash-input-s3

