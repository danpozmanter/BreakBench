// LEVEL: LANGUAGE

import java.io.IOException;

public class Main {
    static void save() throws IOException { throw new IOException("disk full"); }

    static void unhandled() { save(); } // REJECT!

    public static void main(String[] args) {
        try {
            save();
        } catch (IOException e) {
            System.out.println("handled");
        }
    }
}
