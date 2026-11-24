
public class Main {
    public static void main(String[] args) {
        int[] readings = {10, 20, 30};
        int i = Integer.parseInt(args[0]);
        System.out.println(readings[i] - readings[i - 1]); // CONTROL! System.out.println(i > 0 ? String.valueOf(readings[i] - readings[i - 1]) : "no previous");
    }
}
