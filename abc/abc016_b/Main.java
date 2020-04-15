import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        int a = sc.nextInt();
        int b = sc.nextInt();
        int c = sc.nextInt();

        boolean plus  = (a + b) == c;
        boolean minus = (a - b) == c;

        if(plus && minus)
        {
            System.out.println("?");
        }
        else if(plus)
        {
            System.out.println("+");
        }
        else if(minus)
        {
            System.out.println("-");
        }
        else
        {
            System.out.println("!");
        }
    }
}
