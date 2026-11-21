import java.nio.file.Path;
public class Main {
    public static void main(String[] args) {
        Path joined = Path.of("/srv/app/uploads").resolve(args[0]);
        System.out.println(joined.startsWith("/srv/app/uploads") ? "inside" : "escaped");
    }
}
