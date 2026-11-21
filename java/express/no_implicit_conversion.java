// LEVEL: LANGUAGE

public class Main {
    public static void main(String[] args) {
        long big = 42;
        int small = (int) big;
        int wrong = big; // REJECT!
        System.out.println(small);
    }
}
