FROM armv7/armhf-ubuntu_core


# enable mirro
RUN sed -i 's/ports.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && cat /etc/apt/sources.list

# update apt
RUN apt-get update && apt-get -y upgrade && apt-get autoremove && apt-get clean

CMD ["/bin/bash"]