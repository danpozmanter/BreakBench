// LEVEL: STD

import java.util.TreeMap;

public class Main {
    public static void main(String[] args) {
        TreeMap<String, Integer> counts = new TreeMap<>();
        for (String w : new String[] {"a", "b", "a"}) counts.merge(w, 1, Integer::sum);
        System.out.println("a=" + counts.get("a") + " b=" + counts.get("b"));
    }
}
