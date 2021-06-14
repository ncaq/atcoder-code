import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int k = sc.nextInt();

        int[][] t = new int[n][];
        for(int i = 0; i < n; ++i)
        {
            int[] c = new int[k];
            for(int j = 0; j < k; ++j)
            {
                c[j] = sc.nextInt();
            }
            t[i] = c;
        }

        int[] selected = new int[n];
        for(;;)
        {
            {
                int x = 0;
                for(int ti = 0; ti < n; ++ti)
                {
                    x ^= t[ti][selected[ti]];
                }
                if(x == 0)
                {
                    System.out.println("Found");
                    System.err.println(Arrays.toString(selected));
                    System.exit(0);
                }
            }
            for(int si = 0; ; ++si)
            {
                if(si == n)
                {
                    System.out.println("Nothing");
                    System.exit(0);
                }
                if(selected[si] < k - 1)
                {
                    ++(selected[si]);
                    for(int init_i = 0; init_i < si; ++init_i)
                    {
                        selected[init_i] = 0;
                    }
                    break;
                }
            }
        }
    }
}
