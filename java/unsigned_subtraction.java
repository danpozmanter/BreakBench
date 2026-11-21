
public class Main {
    static final int HEADER = 5;

    public static void main(String[] args) {
        String message = args[0];
        int payload = message.length() - HEADER;
        if (payload < 0) {
            System.out.println("short");
        } else {
            System.out.println(payload);
        }
    }
}
