// LEVEL: STD

import java.util.BitSet;

public class Main {
    public static void main(String[] args) {
        BitSet b = new BitSet();
        b.set(1000);
        System.out.println(b.get(1000) + " " + b.get(999));
    }
}
