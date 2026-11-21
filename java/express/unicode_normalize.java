// LEVEL: STD

import java.text.Normalizer;

public class Main {
    public static void main(String[] args) {
        String nfc = Normalizer.normalize("é", Normalizer.Form.NFC);
        System.out.println(nfc.equals("é") ? "equal" : "different");
    }
}
