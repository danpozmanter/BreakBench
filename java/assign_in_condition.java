public class Main {
    public static void main(String[] args) {
        int x = Integer.parseInt(args[0]);
        String label = "not one";
        if (x = 1) label = "one"; // BREAK!
        // CONTROL! if (x == 1) label = "one";
        System.out.println(label);
    }
}
