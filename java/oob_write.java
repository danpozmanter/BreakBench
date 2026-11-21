public class Main {
    static class Frame {
        int[] buf = new int[4];
        int guard = 7;
    }

    public static void main(String[] args) {
        Frame f = new Frame();
        int idx = Integer.parseInt(args[0]);
        f.buf[idx] = 99;
        System.out.println(f.guard);
    }
}
