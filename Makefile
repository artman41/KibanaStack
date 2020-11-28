.PHONY: ALL centos7 java elasticsearch logstash kibana

ALL: start

start: elasticsearch logstash kibana
	docker-compose up

centos7:
	make -C centos7/

java: centos7
	make -C java/

elasticsearch: java
	make -C elasticsearch/

logstash: java
	make -C logstash/

kibana: java
	make -C kibana/
