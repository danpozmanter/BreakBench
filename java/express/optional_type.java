// LEVEL: STD

import java.util.Optional;

public class Main {
    public static void main(String[] args) {
        Optional<Integer> o = Optional.empty();
        int n = o + 1; // REJECT!
        System.out.println(o.isPresent() ? "some" : "none");
    }
}
