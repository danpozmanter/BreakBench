public class Main {
    static int area(int w, int h) {
        return w * h;
    }

    public static void main(String[] args) {
        System.out.println(area(3)); // BREAK!
        System.out.println(area(3, 4));
    }
}
