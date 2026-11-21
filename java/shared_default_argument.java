import java.util.ArrayList;
import java.util.List;

public class Main {
    static List<String> addItem(String item) {
        return addItem(item, new ArrayList<>());
    }

    static List<String> addItem(String item, List<String> cart) {
        cart.add(item);
        return cart;
    }

    public static void main(String[] args) {
        addItem("x");
        List<String> b = addItem("y");
        System.out.println(b.size());
    }
}
