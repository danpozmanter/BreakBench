public class Main {
    public static void main(String[] args) throws Exception {
        int x = Integer.parseInt(args[0]);
        boolean even = x & 1 == 0; // BREAK!
        // CONTROL! boolean even = (x & 1) == 0;
        System.out.println(even ? "even" : "odd");
    }
}
