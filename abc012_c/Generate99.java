import java.util.*;

public class Generate99
{
    public static void main(String[] args)
    {
        String[] ys = new String[82];
        Arrays.fill(ys, "");
        for(int l = 1; l <= 9; ++l)
        {
            for(int r = 1; r <= 9; ++r)
            {
                final int yi = l * r;
                if(ys[yi] != "")
                {
                    ys[yi] += "\\n";
                }
                ys[yi] += Integer.toString(l) + " x " + Integer.toString(r);
            }
        }
        System.out.println("{");
        String delimiter = "";
        for(final String y : ys)
        {
            System.out.print(delimiter + "\"" + y + "\"");
            delimiter = ",\n";
        }
        System.out.println("\n};");
    }
}
