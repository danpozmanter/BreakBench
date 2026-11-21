import java.util.HashSet;
import java.util.Set;

public class Main {
    static final class Point {
        final int x, y;
        final String label;
        Point(int x, int y, String label) { this.x = x; this.y = y; this.label = label; }
        @Override public boolean equals(Object o) { return o instanceof Point p && p.x == x && p.y == y; }
    }

    public static void main(String[] args) {
        Set<Point> s = new HashSet<>();
        s.add(new Point(1, 2, "a"));
        s.add(new Point(1, 2, "b"));
        System.out.println(s.size());
    }
}
