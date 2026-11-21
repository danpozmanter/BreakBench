
public class Main {
    static boolean isOdd(long n) {
        return n % 2 == 1;
    }

    public static void main(String[] args) {
        System.out.println(isOdd(Long.parseLong(args[0])) ? "odd" : "even");
    }
}
