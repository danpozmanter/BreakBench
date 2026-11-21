// LEVEL: LANGUAGE

public class Main {
    sealed interface Shape permits Circle, Square {}
    record Circle(double r) implements Shape {}
    record Square(double side) implements Shape {}

    static String name(Shape s) {
        return switch (s) {
            case Circle c -> "circle";
            case Square q -> "square";
        };
    }

    static String bad(Shape s) { return switch (s) { case Circle c -> "circle"; }; } // REJECT!

    public static void main(String[] args) {
        System.out.println(name(new Circle(1)));
    }
}
