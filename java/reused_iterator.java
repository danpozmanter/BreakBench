import java.util.List;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Integer> xs = List.of(1, 2, 3, 4, 5, 6);
        Stream<Integer> evens = xs.stream().filter(x -> x % 2 == 0); // CONTROL! List<Integer> evens = xs.stream().filter(x -> x % 2 == 0).toList();
        int total = evens.mapToInt(Integer::intValue).sum(); // CONTROL! int total = evens.stream().mapToInt(Integer::intValue).sum();
        long count = evens.count(); // CONTROL! long count = evens.size();
        System.out.println(total + " " + count);
    }
}
