public class Main {
    public static void main(String[] args) throws Exception {
        Object v = 42;
        String s = (String) v; // CONTROL! if (v instanceof String s) System.out.println(s.length()); else System.out.println("not text");
        System.out.println(s.length()); // BREAK!
    }
}
