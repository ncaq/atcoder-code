import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        if(choku(sc.next()))
        {
            System.out.println("YES");
        }
        else
        {
            System.out.println("NO");
        }
    }

    static boolean choku(String s)
    {
        for(int i = 0; i < s.length(); ++i)
        {
            if(s.charAt(i) == 'c')
            {
                ++i;
                if(s.charAt(i) != 'h')
                {
                    return false;
                }
            }
            else
            {
                if(s.charAt(i) != 'o' &&
                   s.charAt(i) != 'k' &&
                   s.charAt(i) != 'u'
                    )
                {
                    return false;
                }
            }
        }
        return true;
    }
}
