FROM docker.elastic.co/logstash/logstash:6.1.1
RUN logstash-plugin install logstash-input-elasticache logstash-input-lumberjack logstash-input-s3 logstash-input-rds logstash-filter-prune logstash-output-statsd
