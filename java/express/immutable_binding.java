// LEVEL: LANGUAGE

public class Main {
    public static void main(String[] args) {
        final int x = 1;
        x = 2; // REJECT!
        System.out.println(x);
    }
}
