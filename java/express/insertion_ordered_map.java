// LEVEL: STD

import java.util.LinkedHashMap;

public class Main {
    public static void main(String[] args) {
        LinkedHashMap<String, Integer> m = new LinkedHashMap<>();
        m.put("c", 1);
        m.put("a", 2);
        m.put("b", 3);
        System.out.println(String.join(" ", m.keySet()));
    }
}
