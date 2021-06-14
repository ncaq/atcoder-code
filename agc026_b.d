import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    long t = readln.chomp.to!long;
    for (int i = 0; i < t; ++i)
    {
        long[] l = readln.chomp.split(" ").to!(long[]);
        long a = l[0], b = l[1], c = l[2], d = l[3];
        long[] backlog = [a];
        long amount = a;
        while (true)
        {
            stderr.writeln(amount);
            if (amount < b)
            {
                writeln("No");
                break;
            }
            amount = amount % b;
            if (amount <= c)
            {
                amount += d;
            }
            if (backlog.any!(e => amount == e))
            {
                writeln("Yes");
                break;
            }
            backlog ~= amount;
        }
        stderr.writeln(backlog);
    }
}
