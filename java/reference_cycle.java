import java.util.Arrays;

public class Main {
    static class Node {
        final byte[] data = new byte[4096];
        Node other;

        Node() {
            Arrays.fill(data, (byte) 1);
        }
    }

    public static void main(String[] args) {
        long n = Long.parseLong(args[0]);
        for (long i = 0; i < n; i++) {
            Node parent = new Node();
            Node child = new Node();
            parent.other = child;
            child.other = parent;
        }
        System.out.println("done");
    }
}
