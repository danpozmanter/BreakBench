public class Main {
    public static void main(String[] args) {
        String name = "a👍b";
        int n = Integer.parseInt(args[0]);
        System.out.println(name.substring(0, n)); // CONTROL! System.out.println(name.substring(0, name.offsetByCodePoints(0, n)));
    }
}
