FROM openjdk:8

MAINTAINER Caneca

ENV PT_VERSION=2.4.55
ENV PT_DL=https://github.com/taniman/profit-trailer/releases/download/${PT_VERSION}/ProfitTrailer-${PT_VERSION}.zip
ENV WORK_DIR=/app/ProfitTrailer

VOLUME ${WORK_DIR}
EXPOSE 8081

ADD ${PT_DL} /opt
COPY run-profittrailer.sh /run-profittrailer.sh

WORKDIR ${WORK_DIR}

CMD ["/bin/bash", "/run-profittrailer.sh"]
