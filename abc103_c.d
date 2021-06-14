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
    long[] a = readln.chomp.split(" ").to!(long[]);

    long sum;

    foreach (x; a)
    {
        sum += x - 1;
    }

    writeln(sum);
}
