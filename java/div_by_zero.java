public class Main {
    public static void main(String[] args) {
        int d = Integer.parseInt(args[0]);
        System.out.println(100 / d); // CONTROL! System.out.println(d == 0 ? "cannot divide" : String.valueOf(100 / d));
    }
}
