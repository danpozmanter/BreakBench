import java.nio.charset.StandardCharsets;

public class Main {
    static void process(String request, int id) {
        byte[] buf = new byte[4096];
        byte[] text = (request + "#" + id).getBytes(StandardCharsets.UTF_8);
        System.arraycopy(text, 0, buf, 0, text.length);
        if (buf[0] != '{') throw new IllegalArgumentException("invalid request");
    }

    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        int failures = 0;
        for (int i = 0; i < n; i++) {
            try {
                process("not json", i);
            } catch (IllegalArgumentException e) {
                failures++;
            }
        }
        System.out.println(failures == n ? "done" : "unexpected");
    }
}
