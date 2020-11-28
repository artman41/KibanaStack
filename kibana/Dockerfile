FROM java

ARG SETUP_DIR=/tmp/setup

RUN mkdir -p $SETUP_DIR

ADD https://artifacts.elastic.co/downloads/kibana/kibana-7.10.0-linux-x86_64.tar.gz $SETUP_DIR/kibana.tar.gz

RUN mkdir /kibana && tar -C /kibana -xzvf $SETUP_DIR/kibana.tar.gz && ln -s /kibana/* /kibana/current

ADD kibana.yml /kibana/kibana.yml

RUN useradd kibana

RUN chown -R kibana:kibana /kibana

RUN rm -rf ${SETUP_DIR}

USER kibana

EXPOSE 5601

ENTRYPOINT [ "/kibana/current/bin/kibana", "--config /kibana/kibana.yml" ]