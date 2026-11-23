public class Main {
    static boolean isAdmin(String user) {
        return user.equals("root");
    }

    static boolean isАdmin(String user) { return true; } // BREAK!

    public static void main(String[] args) {
        String user = "guest";
        System.out.println(isAdmin("root") ? "admin" : "guest");
        System.out.println(isАdmin(user) ? "admin" : "guest"); // CONTROL! System.out.println(isAdmin(user) ? "admin" : "guest");
    }
}
