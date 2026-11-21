public class Main {
    static class Shape {
        String describe() { return "shape"; }
    }

    static class Circle extends Shape {
        @Override
        String describe() { return "circle"; }

        @Override String descibe() { return "circle"; } // BREAK!
    }

    public static void main(String[] args) {
        Shape s = new Circle();
        System.out.println(s.describe());
    }
}
