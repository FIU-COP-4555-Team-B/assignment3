using System;

static class Program
{
    private static void AddOneAndDouble(out int toAdd, out int toMult)
    {
        toAdd = 2;
        toMult = 8;

        Console.WriteLine($"Inside - to-add: {toAdd} to-mult: {toMult}");
    }

    private static void Main()
    {
        int x = 1;
        int y = 4;

        Console.WriteLine($"Before - x: {x} y: {y}");
        AddOneAndDouble(out x, out y);
        Console.WriteLine($"After - x: {x} y: {y}");
    }
}
