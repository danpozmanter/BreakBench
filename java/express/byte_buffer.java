// LEVEL: STD

import java.io.ByteArrayOutputStream;

public class Main {
    public static void main(String[] args) {
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        for (int i = 0; i < 100_000; i++) buf.write(i);
        System.out.println(buf.size());
    }
}
