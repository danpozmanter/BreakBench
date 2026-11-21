// LEVEL: STD

public class Main {
    public static void main(String[] args) {
        try {
            Long.parseLong(args[0]);
            System.out.println("valid");
        } catch (NumberFormatException e) {
            System.out.println("invalid");
        }
    }
}
