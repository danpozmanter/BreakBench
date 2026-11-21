public class Main {
    public static void main(String[] args) {
        String s = "";
        System.out.println((!s.isEmpty()) & (s.charAt(0) == 'a') ? "yes" : "no"); // CONTROL! System.out.println(!s.isEmpty() && s.charAt(0) == 'a' ? "yes" : "no");
    }
}
