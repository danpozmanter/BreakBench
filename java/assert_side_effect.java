import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> jobs = new ArrayList<>(List.of(1, 2, 3));
        assert jobs.removeLast() == 3; // CONTROL! int last = jobs.removeLast(); assert last == 3;
        System.out.println(jobs.size());
    }
}
