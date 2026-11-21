// LEVEL: STD

import java.util.Arrays;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        Double[] xs = {3.0, Double.NaN, 1.0, 2.0};
        Arrays.sort(xs, Double::compare);
        System.out.println(Arrays.stream(xs).map(x -> x.isNaN() ? "NaN" : String.valueOf(x.intValue())).collect(Collectors.joining(" ")));
    }
}
