
public class Main {
    record Node(long value, Node next) {}

    static long buildAndRelease(long n) {
        Node head = null;
        for (long i = 0; i < n; i++) head = new Node(i, head);
        return head == null ? 0 : head.value();
    }

    public static void main(String[] args) {
        buildAndRelease(Long.parseLong(args[0]));
        System.gc();
        System.out.println("done");
    }
}
