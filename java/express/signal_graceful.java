// LEVEL: STD

public class Main {
    public static void main(String[] args) throws Exception {
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            System.out.println("cleaned up");
            System.out.flush();
            Runtime.getRuntime().halt(0);
        }));
        new ProcessBuilder("kill", "-TERM", String.valueOf(ProcessHandle.current().pid())).start().waitFor();
        Thread.sleep(5000);
    }
}
