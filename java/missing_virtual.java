public class Main {
    static class Shape {
        int area() { return 0; }
        String describe() { return "area " + area(); }
    }

    static class Square extends Shape {
        int area() { return 4; }
    }

    public static void main(String[] args) {
        System.out.println(new Square().describe());
    }
}
