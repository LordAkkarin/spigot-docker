FROM java:8
MAINTAINER Johannes Donath <johannesd@torchmind.com>

ENV VERSION 1.8.3

# Compile Spigot & CraftBukkit
RUN mkdir -p /opt/buildtools
RUN curl -Lks https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -o /opt/buildtools/BuildTools.jar
WORKDIR /opt/buildtools
RUN java -Xmx2G -jar BuildTools.jar --rev ${VERSION}
