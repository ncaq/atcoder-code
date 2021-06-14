import core.stdc.stdlib;
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.numeric;
import std.stdio;
import std.string;

// void toBaseMinus2(in long rest, in long digit, in string result)
// {
//     // stderr.writeln(rest, ",  ", digit, ", ", result.dup.reverse);
//     if (rest == 0)
//     {
//         if (result == "")
//         {
//             writeln("0");
//         }
//         else
//         {
//             writeln(result.dup.reverse);
//         }
//         exit(0);
//     }
//     else
//     {
//         long d = pow(-2, digit);
//         if (abs(d) < abs(n))
//         {
//             toBaseMinus2(rest, digit + 1, result ~ '0');
//             toBaseMinus2(rest - d, digit + 1, result ~ '1');
//         }
//     }
// }

// long n;

void main()
{
    // n = readln.chomp.to!long;
    // toBaseMinus2(n, 0, "");
    // string s;
    // long digit = 0;
    // while(true) {
    //     pow(-2, digit);
    // }
    // for (long k = 30; 0 <= k; --k)
    // {
    //     auto d = pow(-2, k);
    //     if (d <= n)
    //     {
    //         n -= d;
    //         s ~= '1';
    //     }
    //     else
    //     {
    //         s ~= '0';
    //     }
    // }
    // writeln(s.dup.reverse);
    long n = readln.chomp.to!long;
    long digit = 0;
    string result;
    while (n != 0)
    {
        if (n % pow(2, digit + 1) == 0)
        {
            result ~= '0';
            ++digit;
        }
        else
        {
            n -= pow(-2, digit);
            result ~= '1';
            ++digit;
        }
    }
    if (result == "")
    {
        writeln("0");
    }
    else
    {
        auto dup = result.dup;
        reverse(dup);
        writeln(dup);
    }
}
