// LEVEL: STD

public class Main {
    public static void main(String[] args) throws Exception {
        System.out.println(new ProcessBuilder("false").start().waitFor());
    }
}
