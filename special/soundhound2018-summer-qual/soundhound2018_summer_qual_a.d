import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    long[] s = readln().chomp().split(" ").map!(to!(long)).array;
    long a = s[0];
    long b = s[1];
    if (a + b == 15)
    {
        writeln("+");
        return;
    }
    if (a * b == 15)
    {
        writeln("*");
        return;
    }
    writeln("x");
}
