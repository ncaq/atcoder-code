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
    string s = readln.chomp;
    writeln(search(s, ""));
}

long search(in string s, in string already) {
    if(s.empty) {
        return 0;
    }
    long count;
    for(long l = 0; l < s.length; ++l) {
        string a = already;
        for(long r = index.length - 1; 0 <= r; --r) {
            if(s[l] == s[r]){
                a ~= s[l];
                count += search(s[l + 1 .. r])
            }
        }
    }
    return count;
}
