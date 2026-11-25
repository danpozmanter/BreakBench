public class Main {
    static int totalUntilStop(String[] codes) {
        int total = 0;
        for (String c : codes) {
            int code = Integer.parseInt(c);
            switch (code) {
                case 0:
                    break; // CONTROL! return total;
                default:
                    total += code;
            }
        }
        return total;
    }

    public static void main(String[] args) {
        System.out.println(totalUntilStop(args));
    }
}
