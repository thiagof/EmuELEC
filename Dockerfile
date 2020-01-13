FROM debian

RUN apt update && apt-get install -y \
                          # build dependencies
                          gcc make git unzip wget \
                          xz-utils libsdl2-dev libsdl2-mixer-dev libfreeimage-dev \
                          libfreetype6-dev libcurl4-openssl-dev rapidjson-dev \
                          libasound2-dev libgl1-mesa-dev build-essential \
                          libboost-all-dev cmake fonts-droid-fallback libvlc-dev \
                          libvlccore-dev vlc-bin texinfo \
                          # default packages not present in debian
                          bc patchutils gawk gperf zip lzop \
                          xfonts-utils xsltproc default-jre libncurses5-dev \
                          libjson-perl sudo

RUN useradd -r emuelec && \
  usermod -a -G root emuelec && \
  usermod -a -G sudo emuelec
USER emuelec
