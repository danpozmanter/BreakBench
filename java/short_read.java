import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

public class Main {
    public static void main(String[] args) throws IOException, InterruptedException {
        Process child = new ProcessBuilder("sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234").start();
        byte[] message = new byte[16];
        InputStream output = child.getInputStream();
        output.read(message);
        child.waitFor();
        System.out.println(new String(message, StandardCharsets.UTF_8));
    }
}
