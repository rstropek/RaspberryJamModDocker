# Minecraft Server with Raspberry Jam Mod

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Frstropek%2FRaspberryJamModDocker%2Fmaster%2FARM-Template%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Frstropek%2FRaspberryJamModDocker%2Fmaster%2FARM-Template%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.png"/>
</a>

`Tags: Minecraft,Docker,Ubuntu`

## Summary

This template deploys an Ubuntu host with Docker installed. Next, it deploys a Docker image for a [Minecraft serer with the Raspberry Jam Mod](https://hub.docker.com/r/rstropek/raspberryjammoddocker/) installed on it. The template opens the necessary ports for the Minecraft client and for the Raspberry Jam mod. Therefore, you can start coding with e.g. C# with [the Decent .NET Minecraft Client](https://github.com/bleroy/minecraft.client).

I wrote an [article in my blog](http://www.software-architects.com/devblog/2016/11/10/minecraft-server-for-dotnet-csharp-modding) about this Docker image and ARM template, too.

## More Information

* Description of the [Docker Image for Raspberry Jam Mod](https://hub.docker.com/r/rstropek/raspberryjammoddocker/)
* [Raspberry Jam Mod on GitHub](https://github.com/arpruss/raspberryjammod)
* [Decent .NET Minecraft Client on GitHub](https://github.com/bleroy/minecraft.client)
* [Python coding for Minecraft](http://www.instructables.com/id/Python-coding-for-Minecraft/)
