public class Main {
    static int[] make() {
        int[] local = {4242};
        return local;
    }

    static int clobber() {
        int[] junk = new int[64];
        java.util.Arrays.fill(junk, 7);
        return junk[63];
    }

    public static void main(String[] args) {
        int[] r = make();
        clobber();
        System.out.println(r[0]);
    }
}
