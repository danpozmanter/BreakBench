public class Main {
    public static void main(String[] args) {
        if ("x".compareTo("x") == 0) System.out.println("same");
        if ("x".compareTo("x")) System.out.println("different"); // BREAK!
    }
}
