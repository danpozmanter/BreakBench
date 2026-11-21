public class Main {
    record P(int x, int y) {}

    public static void main(String[] args) {
        P a = new P(1, 2);
        P b = new P(1, 2);
        System.out.println(a == b ? "equal" : "different");
    }
}
