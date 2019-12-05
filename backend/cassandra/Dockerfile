FROM cassandra:3.11

#cassandra-cliは実行後に「cassandra-cli」と入力するだけで使える。実行時にホスト上のスクリプトのスキーマを流し込むくらいの事はしても良いかも。

RUN sed -i \
      -e 's/batch_size_fail_threshold_in_kb: 50/batch_size_fail_threshold_in_kb: 100000/' \
      -e 's/write_request_timeout_in_ms: 2000/write_request_timeout_in_ms: 20000/' \
      /etc/cassandra/cassandra.yaml
#RUN echo "batch_size_fail_threshold_in_kb: 9192" >> /etc/cassandra/cassandra.yaml
WORKDIR /tools
COPY ./create_keyspace.sh .
