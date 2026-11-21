// LEVEL: STD

public class Main {
    public static void main(String[] args) throws Exception {
        Process p = new ProcessBuilder("echo", "hi; touch /tmp/bb_x").start();
        System.out.print(new String(p.getInputStream().readAllBytes()));
        p.waitFor();
    }
}
