RUN logstash-plugin install logstash-input-elasticache logstash-input-lumberjack logstash-input-s3 logstash-input-rds logstash-filter-prune logstash-output-statsd
FROM docker.elastic.co/logstash/logstash:6.6.2
