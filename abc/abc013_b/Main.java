import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        final int s = Math.abs(sc.nextInt() - sc.nextInt());
        if(s < 5)
        {
            System.out.println(s);
        }
        else
        {
            System.out.println(10 - s);
        }
    }
}
