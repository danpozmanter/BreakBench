// LEVEL: STD

import java.math.BigDecimal;

public class Main {
    public static void main(String[] args) {
        BigDecimal a = new BigDecimal("0.1").add(new BigDecimal("0.2"));
        System.out.println(a.compareTo(new BigDecimal("0.3")) == 0 ? "equal" : "not equal");
    }
}
