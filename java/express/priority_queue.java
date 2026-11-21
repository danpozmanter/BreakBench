// LEVEL: STD

import java.util.PriorityQueue;

public class Main {
    public static void main(String[] args) {
        PriorityQueue<Integer> q = new PriorityQueue<>(java.util.List.of(3, 1, 2));
        System.out.println(q.poll() + " " + q.poll() + " " + q.poll());
    }
}
