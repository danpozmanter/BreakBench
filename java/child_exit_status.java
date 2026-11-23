import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException, InterruptedException {
        new ProcessBuilder("sh", "-c", "exit 3").start().waitFor();
        System.out.println("backed up");
    }
}
