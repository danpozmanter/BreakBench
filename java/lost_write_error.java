import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        try (BufferedWriter w = new BufferedWriter(new FileWriter("/dev/full"))) {
            w.write("data\n");
        } // CONTROL! } catch (IOException e) { System.out.println("failed"); return; }
        System.out.println("saved");
    }
}
