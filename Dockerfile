FROM apache/zeppelin:0.9.0

ENV LC_ALL=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get -y update 


WORKDIR "/opt/zeppelin"
ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["bin/zeppelin.sh"]

