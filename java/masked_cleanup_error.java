import java.io.IOException;

public class Main {
    static class Report implements AutoCloseable {
        void write(String text) throws IOException {
            throw new IOException("disk full");
        }

        @Override
        public void close() throws IOException {
            throw new IOException("close failed");
        }
    }

    static void save() throws IOException {
        try (Report report = new Report()) {
            report.write("totals");
        }
    }

    public static void main(String[] args) {
        try {
            save();
        } catch (IOException error) {
            System.out.println(error.getMessage());
        }
    }
}
