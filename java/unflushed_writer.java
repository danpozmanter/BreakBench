import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedWriter report = new BufferedWriter(new FileWriter("/tmp/bb_report.txt"));
        report.write("total=42\n");
        // CONTROL! report.close();
    }
}
