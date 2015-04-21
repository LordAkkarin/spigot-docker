FROM spigot/base
MAINTAINER Johannes Donath <johannesd@torchmind.com>

# Prepare Spigot installation
RUN /usr/sbin/useradd --create-home --home-dir /opt/spigot --shell /bin/bash spigot
RUN mkdir -p /opt/spigot-home/

RUN cp /opt/buildtools/spigot-${VERSION}.jar /opt/spigot/spigot.jar

RUN chown -R spigot:spigot /opt/spigot/
RUN chown -R spigot:spigot /opt/spigot-home/

USER spigot
VOLUME ["/opt/spigot-home/"]
WORKDIR /opt/spigot-home/

EXPOSE 25565
ENTRYPOINT ["java", "-XX:+UseG1GC", "-Dcom.mojang.eula.agree=true", "-jar", "/opt/spigot/spigot.jar"]
