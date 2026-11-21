import java.nio.file.Files;
import java.nio.file.Path;
public class Main {
    public static void main(String[] args) throws Exception {
        Files.deleteIfExists(Path.of("/tmp/bb_pwned"));
        Process p = Runtime.getRuntime().exec("echo " + args[0]);
        p.waitFor();
        System.out.println(Files.exists(Path.of("/tmp/bb_pwned")) ? "injected" : "safe");
    }
}
