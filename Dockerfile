FROM ubuntu

RUN apt update && apt install -y software-properties-common 
RUN add-apt-repository -y ppa:team-xbmc/xbmc-nightly && apt-get update && apt-get install -y kodi
#RUN kodi
RUN kodi --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw"
