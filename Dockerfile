FROM drydock/u16all:master

ADD . /u16cloall

RUN /u16cloall/install.sh
