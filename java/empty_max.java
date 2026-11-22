import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Long> xs = new ArrayList<>();
        for (String a : args) xs.add(Long.parseLong(a));
        System.out.println(Collections.max(xs) + 1);
    }
}
