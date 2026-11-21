import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Main {
    record Point(int x, int y) {}

    public static void main(String[] args) {
        List<Integer> xs = new ArrayList<>(List.of(3, 1, 2));
        Collections.sort(xs);
        List<Point> ps = new ArrayList<>(List.of(new Point(1, 2))); Collections.sort(ps); // BREAK!
        System.out.println(xs.get(0));
    }
}
