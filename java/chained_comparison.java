public class Main {
    public static void main(String[] args) throws Exception {
        int x = Integer.parseInt(args[0]);
        boolean inside = 1 < x < 3; // BREAK!
        // CONTROL! boolean inside = 1 < x && x < 3;
        System.out.println(inside ? "inside" : "outside");
    }
}
