import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class Main {
    static final Path SCRATCH = Path.of("/tmp/bb_scratch/export.csv");

    static void export(List<String> rows) throws IOException {
        StringBuilder text = new StringBuilder("qty\n");
        Files.writeString(SCRATCH, text);
        for (String row : rows) {
            int qty = Integer.parseInt(row); // BREAK!
            // CONTROL! int qty; try { qty = Integer.parseInt(row); } catch (NumberFormatException e) { Files.delete(SCRATCH); throw e; }
            text.append(qty).append("\n");
            Files.writeString(SCRATCH, text);
        }
        Files.delete(SCRATCH);
    }

    public static void main(String[] args) throws IOException {
        try {
            export(List.of("3", "x", "5"));
        } catch (NumberFormatException e) {
            System.out.println("export failed");
        }
    }
}
