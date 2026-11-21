// LEVEL: STD

import java.util.ArrayDeque;

public class Main {
    public static void main(String[] args) {
        ArrayDeque<Integer> d = new ArrayDeque<>();
        d.addLast(1);
        d.addFirst(0);
        d.addLast(2);
        System.out.println(d.pollFirst() + " " + d.pollLast());
    }
}
