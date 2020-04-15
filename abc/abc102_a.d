import std.algorithm;
import std.conv;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    int n = to!int(readln().chomp());
    if (n % 2 == 0)
    {
        writeln(n);
    }
    else
    {
        writeln(n * 2);
    }
}
