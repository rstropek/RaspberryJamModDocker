## Raspberry Jam Mod

[Raspberry Jam Mod](https://github.com/arpruss/raspberryjammod/) is a Minecraft mod implementing most of Raspberry Juice/Pi API ([read more](http://www.instructables.com/id/Python-coding-for-Minecraft/)).

This image should make it easy to run your own Minecraft server with Raspberry Jam Mod installed. You can use it to teach children programming with e.g. C# with [the .NET Minecraft Client](https://github.com/bleroy/minecraft.client). 

### Quickstart

#### Step 1

Pull the latest image:

```
docker pull rstropek/rstropek/raspjammod:latest
```

#### Step 2

Run the Minecraft Server with Raspberry Jam Mod:

```
docker run -it --rm -p 25565:25565 -p 4711:4711 --name raspjam rstropek/raspjammod:latest
```

Note that this `docker run` command opens ports 25565 (for connecting via Minecraft client) and 4711 (for connecting with C#).

#### Step 3

Write a .NET Core program using [the .NET Minecraft Client](https://github.com/bleroy/minecraft.client).

