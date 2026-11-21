import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Double> xs = new ArrayList<>(List.of(5.0, Double.NaN, 3.0, 1.0, Double.NaN, 4.0, 2.0));
        Collections.sort(xs);
        double prev = Double.NEGATIVE_INFINITY;
        boolean ordered = true;
        for (double x : xs) {
            if (Double.isNaN(x)) continue;
            if (x < prev) ordered = false;
            prev = x;
        }
        System.out.println(ordered ? "ordered" : "unordered");
    }
}
