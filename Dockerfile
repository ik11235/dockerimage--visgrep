FROM alpine:3.12.0

RUN apk --update-cache --no-cache add make gcc g++ xorgproto libpng-dev libx11-dev libxtst-dev
RUN wget https://www.hoopajoo.net/static/projects/xautomation-1.09.tar.gz && tar -zxvf xautomation-1.09.tar.gz && rm xautomation-1.09.tar.gz
RUN cd xautomation-1.09 && ./configure && make visgrep && cp visgrep /usr/local/bin/ && cd .. && rm -rf xautomation-1.09
