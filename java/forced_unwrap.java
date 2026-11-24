import java.util.Optional;

public class Main {
    static Optional<Integer> find(int id) {
        return id == 1 ? Optional.of(36) : Optional.empty();
    }

    public static void main(String[] args) {
        System.out.println("before");
        System.out.println(find(2).get() + 1); // CONTROL! System.out.println(find(2).map(a -> String.valueOf(a + 1)).orElse("missing"));
    }
}
