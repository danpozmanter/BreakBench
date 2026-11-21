import java.util.regex.Pattern;
public class Main {
    public static void main(String[] args) {
        System.out.println(Pattern.matches("^(a+)+$", args[0]) ? "match" : "no match");
    }
}
