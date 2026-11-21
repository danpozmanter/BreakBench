// LEVEL: STD

import java.lang.ref.WeakReference;

public class Main {
    public static void main(String[] args) {
        Object strong = new Object();
        WeakReference<Object> weak = new WeakReference<>(strong);
        strong = null;
        System.gc();
        System.out.println(weak.get() == null ? "gone" : "alive");
    }
}
