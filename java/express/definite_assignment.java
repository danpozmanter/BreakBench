// LEVEL: LANGUAGE

public class Main {
    public static void main(String[] args) {
        boolean ready = args.length < 5;
        int x;
        if (ready) x = 5; else x = 5;
        int y; // REJECT!
        if (ready) y = 1; // REJECT!
        System.out.println(y); // REJECT!
        System.out.println(x);
    }
}
