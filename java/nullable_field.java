public class Main {
    record User(String name) {}
    public static void main(String[] args) {
        User decoded = new User(null);
        System.out.println(decoded.name().length());
    }
}
