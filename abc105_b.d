import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    long n = readln.chomp.to!long;
    for (long cake = 0; cake <= 100; ++cake)
    {
        for (long donuts = 0; donuts <= 100; ++donuts)
        {
            if (cake * 4 + donuts * 7 == n)
            {
                writeln("Yes");
                return;
            }
        }
    }
    writeln("No");
}
