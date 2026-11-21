public class Main {
    record Config(int timeout, int retries) {}

    public static void main(String[] args) {
        var c = new Config(5, 3);
        var partial = new Config(5); // BREAK!
        System.out.println(c.timeout() + " " + c.retries());
    }
}
