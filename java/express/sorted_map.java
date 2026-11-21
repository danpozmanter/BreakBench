// LEVEL: STD

import java.util.TreeMap;

public class Main {
    public static void main(String[] args) {
        TreeMap<String, Integer> m = new TreeMap<>();
        m.put("c", 1);
        m.put("a", 2);
        m.put("b", 3);
        System.out.println(String.join(" ", m.keySet()));
    }
}
