// LEVEL: LANGUAGE

public class Main {
    static String grade(int score) {
        return score > 50 ? "pass" : "fail";
    }

    static String bad(int score) { // REJECT!
        if (score > 50) return "pass"; // REJECT!
    } // REJECT!

    public static void main(String[] args) {
        System.out.println(grade(60));
    }
}
