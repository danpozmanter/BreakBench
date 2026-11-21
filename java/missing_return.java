public class Main {
    static String grade(int score) {
        if (score > 50) return "pass";
        if (score < 50) return "fail";
        // CONTROL! return "borderline";
    }

    public static void main(String[] args) {
        System.out.println(grade(Integer.parseInt(args[0])));
    }
}
