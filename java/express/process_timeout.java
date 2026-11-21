// LEVEL: STD

import java.util.concurrent.TimeUnit;

public class Main {
    public static void main(String[] args) throws Exception {
        Process p = new ProcessBuilder("sleep", "10").start();
        if (!p.waitFor(100, TimeUnit.MILLISECONDS)) {
            p.destroyForcibly();
            p.waitFor();
            System.out.println("killed");
        } else {
            System.out.println("finished");
        }
    }
}
