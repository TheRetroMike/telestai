FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/Telestai-Project/telestai/releases/download/2.1.7/telestai-2.1.7-ddd6a0859-x86_64-linux-gnu.tar.gz
RUN tar zxvf telestai-2.1.7-ddd6a0859-x86_64-linux-gnu.tar.gz
RUN mv telestai-2.1.7-ddd6a0859/bin/telestaid /usr/bin/
RUN mv telestai-2.1.7-ddd6a0859/bin/telestai-cli /usr/bin/
RUN rm -R telestai-2.1.7-ddd6a0859
RUN rm telestai-2.1.7-ddd6a0859-x86_64-linux-gnu.tar.gz
CMD /usr/bin/telestaid -printtoconsole
