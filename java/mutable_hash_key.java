import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        Set<List<Integer>> seen = new HashSet<>();
        List<Integer> key = new ArrayList<>(List.of(1, 2));
        seen.add(key);
        key.set(0, 9); // BREAK!
        for (List<Integer> e : seen) {
            System.out.println(seen.contains(e) ? "found" : "lost");
        }
    }
}
