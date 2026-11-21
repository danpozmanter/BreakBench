import java.util.List;
public class Main {
    public static void main(String[] args) {
        List<String> names = List.of(
            "alice",
            "bob" // CONTROL! "bob",
            "carol"
        );
        System.out.println(names.size());
    }
}
