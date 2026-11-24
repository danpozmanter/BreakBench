import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        List<Integer> xs = new ArrayList<>(List.of(1, 2, 2, 3));
        for (Integer x : xs) { // CONTROL! xs.removeIf(x -> x == 2);
            if (x == 2) xs.remove(x); // BREAK!
        } // BREAK!
        System.out.println(xs.stream().map(String::valueOf).collect(Collectors.joining(",")));
    }
}
