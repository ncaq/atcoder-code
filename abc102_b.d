import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    int n = to!int(readln().chomp());
    int[] a = readln().split().map!(a => to!int(a)).array;
    int m = int.min;
    for (int l = 0; l < a.length; ++l)
    {
        for (int r = l + 1; r < a.length; ++r)
        {
            m = max(m, abs(a[l] - a[r]));
        }
    }
    writeln(m);
}
