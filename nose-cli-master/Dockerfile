FROM ubuntu:16.04 AS builder
MAINTAINER Yusuke Wakuta

# Install packages for building ruby
RUN apt-get update
RUN apt-get install -y --force-yes build-essential curl git vim
RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

# Install rbenv and ruby-build
RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN ./root/.rbenv/plugins/ruby-build/install.sh
ENV PATH /root/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh # or /etc/profile

# Install multiple versions of ruby
ENV CONFIGURE_OPTS --disable-install-doc
RUN xargs -L 1 rbenv install 2.6.0

ENV PATH /root/.rbenv/shims:$PATH

#install cassandra for cqlsh
RUN apt-get install software-properties-common python-software-properties -y
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install openjdk-8-jdk -y
RUN echo "deb http://www.apache.org/dist/cassandra/debian 311x main" | tee -a /etc/apt/sources.list.d/cassandra.sources.list
RUN curl https://www.apache.org/dist/cassandra/KEYS | apt-key add -
RUN apt-get update -qq
RUN apt-get install cassandra -y

RUN apt-get install -qq \
      coinor-libcbc3 \
      coinor-libcbc-dev \
      coinor-libcgl-dev \
      coinor-libclp-dev \
      coinor-libcoinutils-dev \
      coinor-libosi-dev \
      graphviz \
      libmagickwand-dev \
      libmysqlclient-dev \
      libpq-dev && \
    apt-get clean

RUN rbenv global 2.6.0

WORKDIR /nose


# ---


FROM builder

COPY . /nose
RUN bundle install --with=development
