// LEVEL: STD

import java.nio.file.Path;

public class Main {
    public static void main(String[] args) {
        Path base = Path.of("/srv/app");
        Path p = base.resolve("../../etc/passwd").normalize();
        System.out.println(p.startsWith(base) ? "inside" : "outside");
    }
}
