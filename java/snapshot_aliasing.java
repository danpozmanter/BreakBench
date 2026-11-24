import java.util.ArrayList;
import java.util.List;

public class Main {
    static void applyUpdate(List<Integer> weights) {
        weights.set(1, 5);
        weights.set(3, 0);
    }

    public static void main(String[] args) {
        List<Integer> weights = new ArrayList<>(List.of(3, 3, 3, 3));
        List<Integer> before = weights; // CONTROL! List<Integer> before = new ArrayList<>(weights);
        applyUpdate(weights);
        int changes = 0;
        for (int i = 0; i < weights.size(); i++) {
            if (!before.get(i).equals(weights.get(i))) changes++;
        }
        System.out.println(changes);
    }
}
