public class Main {
    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        int x;
        if (n > 5) x = 10;
        System.out.println(x); // BREAK!
        System.out.println(n);
    }
}
