import java.util.ArrayList;
import java.util.List;
import java.util.function.IntSupplier;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        List<IntSupplier> fs = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            fs.add(() -> i); // BREAK!
            // CONTROL! int j = i; fs.add(() -> j);
        }
        System.out.println(fs.stream().map(f -> String.valueOf(f.getAsInt())).collect(Collectors.joining(",")));
    }
}
