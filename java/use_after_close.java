import java.io.FileWriter;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        FileWriter w = new FileWriter("/tmp/bb_close.txt");
        w.write("a");
        w.close();
        w.write("b"); // BREAK!
        System.out.println("ok");
    }
}
