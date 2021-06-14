import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    string n = readln().chomp;
    int[] a = readln().chomp.split(" ").to!(int[]);
    int count = 0;
    int max = 100;
    for (int i = 1; i < a.length; ++i)
    {
        if (a[i - 1] == a[i])
        {
            ++count;
            a[i] = max++;
        }
    }
    writeln(count);
}
