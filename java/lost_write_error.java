import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        // IOException is checked, so the compiler requires the program to handle it.
        try (BufferedWriter w = new BufferedWriter(new FileWriter("/dev/full"))) {
            w.write("data\n");
        } catch (IOException e) {
            System.out.println("failed");
            return;
        }
        System.out.println("saved");
    }
}
