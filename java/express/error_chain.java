// LEVEL: LANGUAGE

public class Main {
    public static void main(String[] args) {
        Exception cause = new Exception("not found");
        Exception e = new Exception("loading config: not found", cause);
        System.out.println(e.getMessage());
        System.out.println(e.getCause().getMessage());
    }
}
