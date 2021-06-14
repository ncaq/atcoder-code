import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    auto nx = readln.chomp.split(" ").to!(long[]);
    long x = nx[1];
    long count = 0;
    for (long i = 0; i < nx[0]; ++i)
    {
        auto vp = readln.chomp.split(" ").to!(long[]);
        long v = vp[0];
        long p = vp[1];
        count += v * p;
        if (x < count / 100.0)
        {
            writeln(i + 1);
            return;
        }
    }
    writeln("-1");
}
