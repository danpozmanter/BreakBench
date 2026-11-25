public class Main {
    public static void main(String[] args) {
        int passes = 0;
        byte i = 0; // BREAK!
        // CONTROL! short i = 0;
        while (i < 300) {
            passes++;
            i++;
        }
        System.out.println(passes);
    }
}
