import java.util.ArrayList;
import java.util.List;

public class Main {
    static class Item {
        int val;
        Item(int v) { val = v; }
    }

    public static void main(String[] args) {
        List<Item> v = new ArrayList<>();
        v.add(new Item(1));
        Item r = v.get(0);
        for (int i = 0; i < 1000; i++) v.add(new Item(i));
        List<Item> w = new ArrayList<>();
        w.add(new Item(7));
        r.val = 99;
        System.out.println(w.get(0).val);
    }
}
