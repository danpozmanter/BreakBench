// LEVEL: LANGUAGE

public class Main {
    record Rec(int id, byte[] data) {}

    public static void main(String[] args) {
        Rec last = new Rec(0, new byte[0]);
        for (int i = 0; i < 4_000_000; i++) {
            last = new Rec(i, new byte[1016]);
        }
        System.out.println(last.id());
    }
}
