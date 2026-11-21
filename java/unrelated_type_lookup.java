import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> ids = List.of(10, 20, 30);
        String id = args[0];
        System.out.println(ids.contains(id) ? "found" : "missing"); // CONTROL! System.out.println(ids.contains(Integer.parseInt(id)) ? "found" : "missing");
    }
}
