public class Main {
    static void check(int n) {
        if (n > 100) {
            System.out.println("big");
            return;
        }
        System.out.println("ok");
        return;
        System.out.println("checked"); // BREAK!
    }

    public static void main(String[] args) {
        check(1);
    }
}
