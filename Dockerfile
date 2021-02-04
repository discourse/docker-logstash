FROM docker.elastic.co/logstash/logstash:7.10.2
RUN logstash-plugin install logstash-input-elasticache logstash-input-lumberjack logstash-input-s3 logstash-input-rds logstash-filter-prune logstash-filter-uuid logstash-output-statsd
