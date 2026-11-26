import java.util.regex.Pattern;
public class Main {
    public static void main(String[] args) {
        System.out.println(Pattern.matches("^[a-z]+$", args[0]) ? "accepted" : "rejected");
    }
}
