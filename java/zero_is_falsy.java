public class Main {
    public static void main(String[] args) {
        Integer qty = Integer.valueOf(args[0]);
        boolean present = false;
        if (qty) present = true; // BREAK!
        // CONTROL! if (qty != null) present = true;
        System.out.println(present ? "have " + qty : "missing");
    }
}
