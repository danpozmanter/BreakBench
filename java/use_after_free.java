public class Main {
    static class Rec {
        long value;
        Rec(long v) { value = v; }
    }

    public static void main(String[] args) {
        Rec a = new Rec(1234);
        Rec b = a;
        a = null;
        Rec c = new Rec(6666);
        System.out.println(b.value);
    }
}
