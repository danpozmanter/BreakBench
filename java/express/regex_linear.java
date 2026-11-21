// LEVEL: STD

import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {
        boolean m = Pattern.compile("^(a+)+$").matcher("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!").matches();
        System.out.println(m ? "match" : "no match");
    }
}
