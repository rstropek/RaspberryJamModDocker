## Raspberry Jam Mod


### Introduction

[Raspberry Jam Mod](https://github.com/arpruss/raspberryjammod/) is a Minecraft mod implementing most of Raspberry Juice/Pi API ([read more](http://www.instructables.com/id/Python-coding-for-Minecraft/)).

This image should make it easy to run your own Minecraft server with Raspberry Jam Mod installed. You can use it to teach children programming with e.g. C# with [the Decent .NET Minecraft Client](https://github.com/bleroy/minecraft.client). 


## Running in Microsoft Azure

You can run containers from this image locally (I use [Docker for Windows](https://docs.docker.com/engine/installation/windows/#/docker-for-windows) to run it on Windows) or on your own Docker host.

If you don't have Docker available, you can run the container in [Microsoft Azure](https://azure.microsoft.com). **To make deploying as easy as possible, I created [an ARM Template](https://github.com/rstropek/RaspberryJamModDocker/tree/master/ARM-Template) for that**. Just click *Deploy to Azure*, wait some minutes and you are done.


### Quickstart

#### Step 1

Pull the latest image:

```
docker pull rstropek/raspberryjammoddocker:latest
```

#### Step 2

Run the Minecraft Server with Raspberry Jam Mod:

```
docker run -it --rm -p 25565:25565 -p 4711:4711 \
    --name raspjam rstropek/raspberryjammoddocker:latest
```

Note that this `docker run` command opens ports 25565 (for connecting via Minecraft client) and 4711 (for connecting with C#).

#### Step 3

Write a .NET Core program using [the .NET Minecraft Client](https://github.com/bleroy/minecraft.client). You can find a small sample in the [GitHub repository associated with this Docker image](https://github.com/rstropek/RaspberryJamModDocker/tree/master/Sample).
