FROM docker.elastic.co/logstash/logstash:6.6.2
RUN logstash-plugin install logstash-input-elasticache logstash-input-lumberjack logstash-input-s3 logstash-input-rds logstash-filter-prune logstash-filter-uuid logstash-output-statsd
