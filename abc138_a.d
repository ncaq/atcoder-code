import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    long a = readln.chomp.to!(long);
    string s = readln.chomp;
    if (3200 <= a)
    {
        writeln(s);
    }
    else
    {
        writeln("red");
    }
}
