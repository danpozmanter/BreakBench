public class Main {
    static String findName(long id) {
        return id == 1 ? "alice" : null;
    }

    public static void main(String[] args) {
        String name = findName(Long.parseLong(args[0]));
        System.out.println("hello, " + name); // CONTROL! System.out.println("hello, " + (name == null ? "nobody" : name));
    }
}
