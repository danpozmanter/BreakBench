public class Main {
    enum Color { RED, GREEN, BLUE }

    static String name(Color c) {
        return switch (c) {
            case RED -> "red";
            case GREEN -> "green";
            // CONTROL! case BLUE -> "blue";
        };
    }

    public static void main(String[] args) {
        System.out.println(name(Color.values()[Integer.parseInt(args[0])]));
    }
}
