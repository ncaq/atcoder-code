import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    long n = to!long(readln().chomp());
    long[] a = readln().split().map!(to!long).array;
    for (long i = 0; i < a.length; ++i)
    {
        a[i] -= i + 1;
    }
    // stderr.writeln(a);
    // auto c = a.dup;
    // sort(c);
    // c = c.uniq.array;
    // foreach (b; c)
    // {
    //     stderr.writeln(b, ":", a.map!(e => abs(e - b)).sum);
    //     m = min(m, a.map!(e => abs(e - b)).sum);
    // }
    // int[int] mode;
    // foreach (e; a)
    // {
    //     auto l = e in mode;
    //     if (l)
    //     {
    //         ++mode[e];
    //     }
    //     else
    //     {
    //         mode[e] = 1;
    //     }
    // }
    // auto r = mode.byKeyValue.array.sort!((a, b) => a.value < b.value);
    // auto maxCount = r[0].value;
    // foreach (e; r)
    // {
    //     auto b = e.key;
    //     if (e.value < maxCount)
    //     {
    //         break;
    //     }
    //     stderr.writeln(b, ":", a.map!(e => abs(e - b)).sum);
    //     m = min(m, a.map!(e => abs(e - b)).sum);
    // }
    long m = long.max;
    sort(a);
    if (a.length % 2 == 0)
    {
        double median = (a[to!long(floor(a.length / 2.0))] + a[to!long(ceil(a
                .length / 2.0))]) / 2.0;
        long downer = to!long(floor(median));
        long upper = to!long(ceil(median));
        long b = downer;
        m = min(m, a.map!(e => abs(e - b)).sum);
        b = upper;
        m = min(m, a.map!(e => abs(e - b)).sum);
    }
    else
    {
        long b = a[to!long(floor(a.length / 2.0))];
        m = min(m, a.map!(e => abs(e - b)).sum);
    }
    // sort(a);
    // long b = a[n / 2];
    writeln(m);
}
