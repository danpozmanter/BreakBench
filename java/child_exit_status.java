import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException, InterruptedException {
        new ProcessBuilder("sh", "-c", "exit 3").start().waitFor(); // CONTROL! if (new ProcessBuilder("sh", "-c", "exit 3").start().waitFor() != 0) { System.out.println("backup failed"); return; }
        System.out.println("backed up");
    }
}
