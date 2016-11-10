FROM openjdk:8u111-jre

# Update packages and install prerequisites
RUN apt-get -y update \
    && apt-get -y install unzip

# Download and install Minecraft Forge
RUN mkdir /bin/forge \
    && cd /bin/forge \
    && curl http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.10.2-12.18.2.2099/forge-1.10.2-12.18.2.2099-installer.jar -o forge-1.10.2-12.18.2.2099-installer.jar \
    && java -jar forge-1.10.2-12.18.2.2099-installer.jar --installServer \ 
    && printf "#%s\neula=true" "$(date)" > /bin/forge/eula.txt 

WORKDIR /bin/forge

# Download and install Raspberry Jam
RUN mkdir /tmp/RaspberryJamMod \
    && cd /tmp/RaspberryJamMod \
    && curl -L https://github.com/arpruss/raspberryjammod/releases/download/0.82.2/mods.zip -o /tmp/RaspberryJamMod/mods.zip \
    && unzip /tmp/RaspberryJamMod/mods.zip -d /tmp/RaspberryJamMod \
    && mkdir /bin/forge/mods \
    && cp ./1.10.2/*.jar /bin/forge/mods/

EXPOSE 25565 4711 

CMD ["java", "-jar", "forge-1.10.2-12.18.2.2099-universal.jar"]
