FROM debian:buster-slim
RUN apt-get update -y
RUN apt-get install asterisk apache2 -y
RUN sed -i "s/rtpstart=10000/rtpstart=16384/g" /etc/asterisk/rtp.conf
RUN sed -i "s/rtpend=20000/rtpend=16394/g" /etc/asterisk/rtp.conf
#ENTRYPOINT ["/etc/init.d/asterisk" , "start"]
