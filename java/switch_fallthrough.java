public class Main {
    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        String name;
        switch (n) {
            case 1:
                name = "one";
            case 2:
                name = "two";
                break;
            default:
                name = "other";
        }
        System.out.println(name);
    }
}
