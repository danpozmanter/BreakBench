// LEVEL: STD

public class Main {
    public static void main(String[] args) {
        System.out.println(System.getenv("BB_UNSET") == null ? "absent" : "present");
    }
}
