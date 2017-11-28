FROM docker.elastic.co/logstash/logstash:6.0.0
RUN logstash-plugin install logstash-input-s3 logstash-input-lumberjack

