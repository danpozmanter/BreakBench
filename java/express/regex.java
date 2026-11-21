// LEVEL: STD

import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {
        Pattern re = Pattern.compile("^[a-z]+[0-9]{2}$");
        System.out.println(re.matcher("abc12").matches() + " " + re.matcher("abc1").matches());
    }
}
