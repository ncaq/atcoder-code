import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

void main()
{
    string s = readln.chomp;
    string t = readln.chomp;
    for (long diff = 0; diff < s.length; ++diff)
    {
        char[] n;
        n.length = s.length;
        for (long i = 0; i < s.length; ++i)
        {
            long d = i + diff;
            if (s.length <= d)
            {
                d %= s.length;
            }
            n[i] = s[d];
        }
        if (n == t)
        {
            writeln("Yes");
            return;
        }
    }
    writeln("No");
}
