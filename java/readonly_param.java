import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Main {
    static int count(List<Integer> xs) {
        Collections.sort(xs); // CONTROL! xs = new ArrayList<>(xs); Collections.sort(xs);
        return xs.size();
    }

    public static void main(String[] args) {
        List<Integer> items = new ArrayList<>(List.of(3, 1, 2));
        count(items);
        System.out.println(items.get(0));
    }
}
