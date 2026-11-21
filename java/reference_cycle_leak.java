import java.util.function.IntSupplier;

public class Main {
    static class Node {
        Node next;
        byte[] payload = new byte[2048];
    }

    static class Obj {
        byte[] payload = new byte[2048];
        IntSupplier callback;
    }

    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        long total = 0;
        for (int i = 0; i < n; i++) {
            Node a = new Node();
            Node b = new Node();
            a.next = b;
            b.next = a;
            Obj o = new Obj();
            o.callback = () -> o.payload.length;
            total += o.callback.getAsInt();
        }
        System.out.println(total < 0 ? "unreachable" : "done");
    }
}
