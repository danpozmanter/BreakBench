// LEVEL: STD

import java.util.TreeSet;

public class Main {
    public static void main(String[] args) {
        TreeSet<Integer> s = new TreeSet<>(java.util.List.of(3, 1, 2));
        StringBuilder b = new StringBuilder();
        for (int v : s) b.append(b.isEmpty() ? "" : " ").append(v);
        System.out.println(b);
    }
}
