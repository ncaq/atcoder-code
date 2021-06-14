import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    string s = readln().chomp;
    long w = readln().chomp.to!long;
    for (int i = 0; i < s.length; i += w)
    {
        write(s[i]);
    }
    writeln();
}
