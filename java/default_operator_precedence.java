import java.util.Optional;

public class Main {
    static Optional<Integer> cachedCount(String name) {
        return name.equals("ada") ? Optional.of(4) : Optional.empty();
    }

    public static void main(String[] args) {
        Optional<Integer> cached = cachedCount(args[0]);
        int count = cached.orElse(0) + 1;
        System.out.println(count);
    }
}
