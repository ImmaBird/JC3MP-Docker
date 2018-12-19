FROM cm2network/steamcmd
USER steam
RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir "/home/steam/jc3" +app_update 619960 validate +quit
WORKDIR /home/steam/jc3
COPY packages packages
RUN ./Server; exit 0
ENTRYPOINT [ "./Server" ]
