import java.time.DateTimeException;
import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        LocalDate date = LocalDate.of(Integer.parseInt(args[0]), Integer.parseInt(args[1]), Integer.parseInt(args[2])); // BREAK!
        System.out.println(date); // BREAK!
        // CONTROL! try { System.out.println(LocalDate.of(Integer.parseInt(args[0]), Integer.parseInt(args[1]), Integer.parseInt(args[2]))); } catch (DateTimeException e) { System.out.println("invalid"); }
    }
}
