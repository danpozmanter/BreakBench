// LEVEL: LANGUAGE

public class Main {
    public static void main(String[] args) {
        int id = 42;
        if (id == 42) System.out.println("match");
        if (id == "42") System.out.println("text"); // REJECT!
    }
}
