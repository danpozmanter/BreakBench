// LEVEL: STD

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.PosixFilePermissions;

public class Main {
    public static void main(String[] args) throws Exception {
        Path path = Path.of("/tmp/bb_perm.txt");
        Files.deleteIfExists(path);
        Files.createFile(path, PosixFilePermissions.asFileAttribute(PosixFilePermissions.fromString("rw-------")));
        int mode = (Integer) Files.getAttribute(path, "unix:mode");
        System.out.println(Integer.toOctalString(mode & 0777));
        Files.delete(path);
    }
}
