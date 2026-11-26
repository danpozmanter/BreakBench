import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class Main {
    record Order(int customer, int day) {}

    public static void main(String[] args) {
        List<Order> orders = new ArrayList<>();
        for (int day = 0; day < 200; day++) orders.add(new Order(day * 7 % 5, day));
        orders.sort(Comparator.comparingInt(Order::customer));
        boolean kept = true;
        for (int i = 1; i < orders.size(); i++) {
            Order a = orders.get(i - 1), b = orders.get(i);
            if (a.customer() == b.customer() && b.day() < a.day()) kept = false;
        }
        System.out.println(kept ? "kept" : "scrambled");
    }
}
