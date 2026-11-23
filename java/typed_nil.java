public class Main {
    static class ValidationError extends Exception {
        ValidationError(String field) {
            super("invalid " + field);
        }
    }

    static Exception validate(String name) {
        ValidationError problem = name.isEmpty() ? new ValidationError("name") : null;
        return problem;
    }

    public static void main(String[] args) {
        System.out.println(validate("ada") != null ? "invalid" : "valid");
    }
}
