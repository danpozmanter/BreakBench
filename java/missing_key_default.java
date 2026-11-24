import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        Map<String, Integer> stock = new HashMap<>(Map.of("apple", 3, "plum", 4));
        String name = args[0];
        System.out.println(stock.get(name) + 5); // CONTROL! Integer n = stock.get(name); System.out.println(n == null ? "unknown" : String.valueOf(n + 5));
    }
}
