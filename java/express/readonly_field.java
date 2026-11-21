// LEVEL: LANGUAGE

public class Main {
    record Config(int port) {}

    public static void main(String[] args) {
        Config c = new Config(8080);
        c.port = 1; // REJECT!
        System.out.println(c.port());
    }
}
