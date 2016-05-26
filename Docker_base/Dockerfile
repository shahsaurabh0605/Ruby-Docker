FROM ubuntu:14.04
MAINTAINER Guo Xiang "tgx_world@hotmail.com"

RUN apt-get update
RUN apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev git curl libtool libxslt-dev libxml2-dev libpq-dev gawk curl pngcrush python-software-properties software-properties-common tasksel apache2-utils postgresql-client libffi-dev

RUN git config --global user.email "you@example.com" &&\
    git config --global user.name "Your Name"

RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN ./root/.rbenv/plugins/ruby-build/install.sh
ENV PATH /root/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh # or /etc/profile
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Install Github Ruby with per method cache
RUN git clone --verbose --branch trunk --single-branch https://github.com/shahsaurabh0605/ruby.git githubruby
ADD config.sub /githubruby/tool/config.sub
ADD config.guess /githubruby/tool/config.guess
RUN apt-get install -y ruby
# RUN cd githubruby && git reset --hard HEAD~2000 && autoconf && ./configure --disable-install-doc && make && make install

