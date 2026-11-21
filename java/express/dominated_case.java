// LEVEL: LANGUAGE

public class Main {
    sealed interface Shape permits Circle, Square {}
    record Circle() implements Shape {}
    record Square() implements Shape {}

    static String describe(Shape s) {
        return switch (s) {
            case Circle c -> "circle";
            default -> "other";
        };
    }

    static String bad(Shape s) { return switch (s) { case Shape x -> "other"; case Circle c -> "circle"; }; } // REJECT!

    public static void main(String[] args) {
        System.out.println(describe(new Square()));
    }
}
