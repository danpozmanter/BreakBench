public class Main {
    static int parseOrder(String line) {
        String[] parts = line.split(",");
        return Integer.parseInt(parts[2]); // BREAK!
        // CONTROL! return Integer.parseInt(parts[1]);
    }

    public static void main(String[] args) {
        try {
            System.out.println(parseOrder("widget,5"));
        } catch (Exception e) {
            System.out.println("invalid order");
        }
    }
}
