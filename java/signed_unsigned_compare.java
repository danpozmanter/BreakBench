import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> xs = List.of(1, 2, 3);
        long i = Long.parseLong(args[0]);
        if (i < xs.size()) {
            System.out.println("less");
        } else {
            System.out.println("not less");
        }
    }
}
