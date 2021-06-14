import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    long n = readln.chomp.to!(long);
    writeln(((9 / 5.0) * n) + 32);
}
