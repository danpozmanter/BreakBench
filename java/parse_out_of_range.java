public class Main {
    public static void main(String[] args) {
        long n = Long.parseLong(args[0]); // CONTROL! long n; try { n = Long.parseLong(args[0]); } catch (NumberFormatException e) { System.out.println("invalid"); return; }
        System.out.println(n);
    }
}
