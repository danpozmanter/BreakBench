public class Main {
    public static void main(String[] args) {
        String s = "ab" + args[0];
        System.out.println(s == "abc" ? "equal" : "different");
    }
}
