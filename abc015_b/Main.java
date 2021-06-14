import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int sum = 0;
        int size = 0;
        for(int i = 0; i < n; ++i)
        {
            int bug = sc.nextInt();
            if(bug != 0)
            {
                sum += bug;
                ++size;
            }
        }
        System.out.println((int)Math.ceil((double)sum / (double)size));
    }
}
