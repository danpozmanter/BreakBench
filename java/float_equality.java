public class Main {
    public static void main(String[] args) {
        double x = Double.parseDouble(args[0]);
        double y = Double.parseDouble(args[1]);
        double a = x + y;
        System.out.println(a == 0.3 ? "equal" : "not equal"); // CONTROL! System.out.println(Math.abs(a - 0.3) < 1e-9 ? "equal" : "not equal");
    }
}
