public class Main {
    enum Color { RED, GREEN, BLUE }

    public static void main(String[] args) {
        System.out.println("before");
        System.out.println(Color.values()[Integer.parseInt(args[0])]);
    }
}
