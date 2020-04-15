import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

double n, m, d;
/*
void main()
{
    long[] s = readln().chomp.split(" ").to!(long[]);
    n = s[0];
    m = s[1];
    d = s[2];
    long[] a;
    a.length = m;
    a[] = 1;
    long[] b;
    while (true)
    {
        // stderr.writeln(a);
        b ~= beautiful(a);
        long back;
        for (back = a.length - 1; 0 <= back; --back)
        {
            if (a[back] != n)
            {
                break;
            }
            else
            {
                if (a.all!(e => e == n))
                {
                    goto end;
                }
                a[back .. $] = 1;
            }
        }
        ++a[back];
    }
end:
    stderr.writeln(b);
    writeln(b.sum.to!double / b.length);
}

long[long[]] memo;

long beautiful(in long[] a)
{
    stderr.writeln(a.length);
    auto m = a in memo;
    if (m)
    {
        stderr.writeln(memo.length);
        return *m;
    }
    if (a.all!(e => e == a[0]))
    {
        memo[a.idup] = d == 0 ? a.length : 0;
        return memo[a.idup];
    }
    if (a.length < 2)
    {
        if (abs(a[0] - a[1]) == d)
        {
            memo[a.idup] = 1;
        }
        else
        {
            memo[a.idup] = 0;
        }
        return memo[a.idup];
    }
    long sum = beautiful(a[0 .. $ - 1]);
    if (abs(a[$ - 2] - a[$ - 1]) == d)
    {
        ++sum;
    }
    memo[a.idup] = sum;
    return sum;
}
*/

void main()
{
    double[] s = readln().chomp.split(" ").to!(double[]);
    n = s[0];
    m = s[1];
    d = s[2];
    writefln("%f", ((n - d) * (d == 0 ? 1 : 2) * (m - 1)) / (n * n));
}
