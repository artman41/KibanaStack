FROM java

ARG SETUP_DIR=/tmp/setup

RUN mkdir -p $SETUP_DIR

ADD https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.0-linux-x86_64.tar.gz $SETUP_DIR/elasticsearch.tar.gz

RUN mkdir /elasticsearch && tar -C /elasticsearch -xzvf $SETUP_DIR/elasticsearch.tar.gz && ln -s /elasticsearch/* /elasticsearch/current

ADD elasticsearch.yml /elasticsearch/current/config/elasticsearch.yml

RUN mkdir /elasticsearch/logs && mkdir /elasticsearch/data

RUN useradd elasticsearch

RUN chown -R elasticsearch:elasticsearch /elasticsearch;

RUN rm -rf ${SETUP_DIR}

USER elasticsearch

EXPOSE 9200

VOLUME [ "/elasticsearch/data", "/elasticsearch/logs" ]

ENTRYPOINT ["/elasticsearch/current/bin/elasticsearch" ]

WORKDIR /elasticsearch