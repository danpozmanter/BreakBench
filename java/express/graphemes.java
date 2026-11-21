// LEVEL: STD

import java.text.BreakIterator;

public class Main {
    public static void main(String[] args) {
        String s = "abcdefgh👍🏽xyz";
        BreakIterator it = BreakIterator.getCharacterInstance();
        it.setText(s);
        int end = 0;
        for (int i = 0; i < 9; i++) end = it.next();
        System.out.println(s.substring(0, end));
    }
}
