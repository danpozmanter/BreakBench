import java.io.IOException;
public class Main {
    static void writeReport() throws IOException {
        throw new IOException("disk full");
    }

    static void closeLog() {
    }

    static void saveReport() throws IOException {
        try {
            writeReport();
        } finally {
            closeLog();
            return; // BREAK!
        }
    }

    public static void main(String[] args) {
        try {
            saveReport();
            System.out.println("saved");
        } catch (IOException e) {
            System.out.println("failed");
        }
    }
}
