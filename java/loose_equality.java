public class Main {
    public static void main(String[] args) {
        String code = args[0];
        System.out.println(code == 0 ? "same" : "different"); // CONTROL! System.out.println(code.equals("0") ? "same" : "different");
    }
}
