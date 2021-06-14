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
    long m = long.max;
    foreach (job; [[0, 1, 2], [1, 2, 0], [2, 1, 0], [1, 0, 2], [2, 0, 1]])
    {
        long cost;
        for (long i = 0; i < 2; ++i)
        {
            cost += abs(a[job[i + 1]] - a[job[i]]);
        }
        m = min(m, cost);
    }
    writeln(m);
}
