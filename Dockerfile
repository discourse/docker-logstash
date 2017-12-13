FROM docker.elastic.co/logstash/logstash:6.0.1
RUN logstash-plugin install logstash-input-s3 logstash-input-rds logstash-input-lumberjack logstash-filter-prune logstash-output-statsd

