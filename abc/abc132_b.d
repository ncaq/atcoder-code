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
    long[] p = readln.chomp.split(" ").to!(long[]);
    long count = 0;
    for(long i = 1; i < n - 1; ++i) {
      if (p [i - 1] < p[i] && p[i] < p[i + 1] || p[i + 1] < p[i] && p[i] < p[i - 1]) {
        ++count;
      }
    }
    writeln(count);
}
