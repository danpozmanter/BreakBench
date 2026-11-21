
public class Main {
    public static void main(String[] args) {
        String status = "pending";
        if (args[0].equals("ok")) {
            String status = "done"; // CONTROL! status = "done";
            System.err.println("status: " + status);
        }
        System.out.println(status);
    }
}
