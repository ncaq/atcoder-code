import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int x = sc.nextInt();

        int price = 0;
        for(int i = 0; i < n; ++i)
        {
            int ai = sc.nextInt();
            if((((int)Math.pow(2, i)) & x) != 0)
            {
                price += ai;
            }
        }

        System.out.println(price);
    }
}
