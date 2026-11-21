// LEVEL: LANGUAGE

public class Main {
    sealed interface Port permits Ok, Err {}

    record Ok(int value) implements Port {}

    record Err(String message) implements Port {}

    static Port parsePort(String s) {
        try {
            return new Ok(Integer.parseInt(s));
        } catch (NumberFormatException e) {
            return new Err(e.getMessage());
        }
    }

    public static void main(String[] args) {
        String out = switch (parsePort("x")) {
            case Ok ok -> String.valueOf(ok.value());
            case Err err -> "error";
        };
        System.out.println(out);
    }
}
