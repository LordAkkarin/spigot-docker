FROM spigot/base
MAINTAINER Johannes Donath <johannesd@torchmind.com>

# Prepare CraftBukkit installation
RUN /usr/sbin/useradd --create-home --home-dir /opt/craftbukkit --shell /bin/bash craftbukkit
RUN mkdir -p /opt/spigot-home/

RUN cp /opt/buildtools/craftbukkit-${VERSION}.jar /opt/craftbukkit/craftbukkit.jar

RUN chown -R craftbukkit:craftbukkit /opt/craftbukkit/
RUN chown -R craftbukkit:craftbukkit /opt/spigot-home/

USER craftbukkit
VOLUME ["/opt/spigot-home/"]
WORKDIR /opt/spigot-home/

EXPOSE 25565
ENTRYPOINT ["java", "-XX:+UseG1GC", "-jar", "/opt/craftbukkit/craftbukkit.jar"]
