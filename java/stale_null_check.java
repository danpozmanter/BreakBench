public class Main {
    record User(String name) {}

    static class Session {
        User user;
        Session(User user) { this.user = user; }
    }

    static void logout(Session session) {
        session.user = null;
    }

    public static void main(String[] args) {
        Session session = new Session(new User("alice"));
        if (session.user != null) {
            logout(session);
            System.out.println(session.user.name().length());
        }
    }
}
