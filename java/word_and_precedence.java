public class Main {
    public static void main(String[] args) {
        boolean ready = args[0].equals("yes");
        boolean approved = args[1].equals("yes");
        boolean ok = ready && approved;
        System.out.println(ok ? "go" : "wait");
    }
}
