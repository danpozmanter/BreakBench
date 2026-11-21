public class Main {
    enum Color { RED, GREEN, BLUE }

    static String name(Color c) {
        return switch (c) {
            case RED -> "red";
            case GREEN -> "green";
            case BLUE -> "blue";
        };
    }

    public static void main(String[] args) {
        Color c = Color.GREEN;
        System.out.println(name(7)); // BREAK!
        System.out.println(name(c));
    }
}
