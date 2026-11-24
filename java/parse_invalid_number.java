public class Main {
    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]); // CONTROL! int n; try { n = Integer.parseInt(args[0]); } catch (NumberFormatException e) { System.out.println("invalid"); return; }
        System.out.println(n + 1);
    }
}
