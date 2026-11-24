public class Main {
    record User(String name) {}

    static User findUser(long id) {
        return id == 1 ? new User("alice") : null;
    }

    public static void main(String[] args) {
        User u = findUser(Long.parseLong(args[0]));
        System.out.println(u.name().length()); // CONTROL! System.out.println(u == null ? "missing" : String.valueOf(u.name().length()));
    }
}
