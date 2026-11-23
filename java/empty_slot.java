public class Main {
    record User(String name) {}

    public static void main(String[] args) {
        User[] users = new User[3];
        users[1] = new User("bob");
        users[2] = new User("carol");
        System.out.println(users[0].name().length());
    }
}
