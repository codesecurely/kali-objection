FROM kalilinux/kali

COPY packages.txt /tmp/
RUN echo "deb http://kali.download/kali kali-last-snapshot main contrib non-free" > /etc/apt/sources.list && \
   apt-get -y update && apt-get -y dist-upgrade && \
   cat /tmp/packages.txt | DEBIAN_FRONTEND=noninteractive xargs apt-get -y install && \
   apt-get -y autoremove && apt-get -y clean && \
   rm -rf /tmp/packages.txt && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip && \
   unzip platform-tools-latest-linux.zip && \
   rm -rf platform-tools-latest-linux.zip && \
   pip3 install objection && \
   wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /usr/local/bin/apktool && \
   wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.5.0.jar -O /usr/local/bin/apktool.jar && \
   chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar

CMD ["/bin/bash"]
