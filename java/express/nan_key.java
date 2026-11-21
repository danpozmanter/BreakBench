// LEVEL: STD

import java.util.HashSet;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        double a = Double.parseDouble("NaN");
        double b = Double.parseDouble("NaN");
        Set<Double> s = new HashSet<>();
        s.add(a);
        System.out.println(s.contains(b) ? "found" : "missing");
    }
}
