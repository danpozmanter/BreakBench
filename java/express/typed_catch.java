// LEVEL: LANGUAGE

public class Main {
    static class KindA extends RuntimeException {}
    static class KindB extends RuntimeException {}

    static void step(boolean a) {
        try {
            if (a) throw new KindA(); else throw new KindB();
        } catch (KindA e) {
            System.out.println("caught A");
        }
    }

    public static void main(String[] args) {
        step(true);
        try { step(false); } catch (KindB e) { System.out.println("passed B"); }
    }
}
