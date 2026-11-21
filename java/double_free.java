public class Main {
    static class Rec {
        long value;
        Rec(long v) { value = v; }
    }

    public static void main(String[] args) {
        Rec a = new Rec(0);
        a = null;
        a = null;
        Rec x = new Rec(1);
        Rec y = new Rec(2);
        System.out.println(x.value);
    }
}
