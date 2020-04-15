import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        int a = sc.nextInt();
        int b = sc.nextInt();

        int d = 0;
        for(int m = a % b; m != 0 && m != b; ++m)
        {
            ++d;
        }

        System.out.println(d);
    }
}
