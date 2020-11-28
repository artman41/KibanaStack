FROM java

ARG SETUP_DIR=/tmp/setup

RUN mkdir -p $SETUP_DIR

ADD https://artifacts.elastic.co/downloads/logstash/logstash-7.10.0-linux-x86_64.tar.gz $SETUP_DIR/logstash.tar.gz

RUN mkdir /logstash && tar -C /logstash -xzvf $SETUP_DIR/logstash.tar.gz && ln -s /logstash/* /logstash/current

ADD logstash.conf /logstash/current/config/logstash.conf
ADD logstash.yml  /logstash/current/config/logstash.yml
ADD pipelines.yml /logstash/current/config/pipelines.yml

RUN useradd logstash

RUN chown -R logstash:logstash /logstash

RUN rm -rf ${SETUP_DIR}

USER logstash

VOLUME [ "/logstash/data", "/logstash/logs" ]

#ENTRYPOINT [ "/logstash/current/bin/logstash", "-f /logstash/current/config/logstash.conf" ]

ENTRYPOINT [ "/logstash/current/bin/logstash" ]

WORKDIR /logstash