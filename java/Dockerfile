FROM centos7

ARG SETUP_DIR=/tmp/setup

RUN mkdir -p $SETUP_DIR

ADD https://javadl.oracle.com/webapps/download/AutoDL?BundleId=243726_61ae65e088624f5aaa0b1d2d801acb16 $SETUP_DIR/java.rpm

RUN rpm -ivh $SETUP_DIR/java.rpm

RUN rm -rf ${SETUP_DIR}

RUN echo "export JAVA_HOME=/usr/java/default/" >> /etc/bashrc; \
    source ~/.bashrc

ENTRYPOINT /bin/bash
