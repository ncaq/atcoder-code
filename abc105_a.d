import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    long[] a = readln.chomp.split(" ").to!(long[]);
    auto n = a[0];
    auto k = a[1];

    auto m = n % k;
    if (m != 0)
    {
        writeln(1);
    }
    else
    {
        writeln(0);
    }
}
