FROM armv7/armhf-ubuntu_core


# enable mirro
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && sed -i 's|security.debian.org|mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list

# update apt
RUN apt-get update && apt-get -y upgrade && apt-get autoremove && apt-get clean

CMD ["/bin/bash"]