import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        List<byte[]> heads = new ArrayList<>();
        List<String> prefixes = new ArrayList<>();
        for (int i = 0; i < n; i++) {
            byte[] buf = new byte[32768];
            Arrays.fill(buf, (byte) i);
            heads.add(Arrays.copyOfRange(buf, 0, 16));
            String big = String.valueOf((char) ('a' + i % 26)).repeat(32768);
            prefixes.add(big.substring(0, 16));
        }
        System.out.println(heads.size());
    }
}
