import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        final int n = sc.nextInt();
        final int h = n / (60 * 60);
        final int m = (n % (60 * 60)) / 60;
        final int s = n % 60;
        System.out.printf("%02d:%02d:%02d\n", h, m, s);
    }
}
