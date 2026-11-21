public class Main {
    static class Frame {
        int[] buf = {1, 2, 3, 4};
        int secret = 42;
    }

    public static void main(String[] args) {
        Frame f = new Frame();
        int idx = Integer.parseInt(args[0]);
        System.out.println(f.buf[idx]);
    }
}
