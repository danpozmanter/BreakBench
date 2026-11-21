// LEVEL: STD

import java.util.Set;

public class Main {
    record Pair(int a, int b) {}

    public static void main(String[] args) {
        Set<Pair> s = Set.of(new Pair(1, 2));
        System.out.println(s.contains(new Pair(1, 2)));
    }
}
