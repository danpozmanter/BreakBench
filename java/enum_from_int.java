public class Main {
    enum Color { RED, GREEN, BLUE }

    public static void main(String[] args) {
        System.out.println("before");
        System.out.println(Color.values()[Integer.parseInt(args[0])]); // CONTROL! int n = Integer.parseInt(args[0]); System.out.println(n >= 0 && n < Color.values().length ? Color.values()[n].toString() : "invalid");
    }
}
