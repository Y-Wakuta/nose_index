FROM ruby:2.3

RUN gem install cassandra-web

RUN apt update && \
    apt install -y dnsutils

ENV CASSANDRA_HOST="127.0.0.1" \
    CASSANDRA_PORT="9042" \
    CASSANDRA_USERNAME="cassandra" \
    CASSANDRA_PASSWORD="cassandra" \
    WEB_UI_PORT="3000"

COPY entrypoint.sh /

RUN chmod a+x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["sh", "-c", "sleep 30 && /entrypoint.sh"]

