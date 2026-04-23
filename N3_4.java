import java.util.Scanner;

public class N3_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        
        for (int i = 0; i < n; i++) {
            String num = sc.next();
            String rev = new StringBuilder(num).reverse().toString();
            
            if (num.equals(rev)) {
                System.out.print("Yes ");
            } else {
                System.out.print("No ");
            }
        }
        System.out.println();
    }
}