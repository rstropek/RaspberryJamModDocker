using System;
using System.Numerics;
using Decent.Minecraft.Client;
using Decent.Minecraft.Client.Blocks;

namespace Minecraft.Scratch
{
    public class Program
    {
        public static void Main(string[] args)
        {
            if (args.Length != 1)
            {
                Console.WriteLine("Argument missing. Pass IP address of Minecraft server.");
                return;
            }

            using (var world = JavaWorld.Connect(args[0]))
            {
                world.PostToChat("Hello from C# and .NET Core!");
            }
        }
    }
}
