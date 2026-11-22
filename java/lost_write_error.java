import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        try (BufferedWriter w = new BufferedWriter(new FileWriter("/dev/full"))) {
            w.write("data\n");
        }
        System.out.println("saved");
    }
}
