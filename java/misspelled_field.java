public class Main {
    static class Config {
        String color = "blue";
    }

    public static void main(String[] args) {
        Config cfg = new Config();
        cfg.colour = "red"; // BREAK!
        System.out.println(cfg.color);
    }
}
