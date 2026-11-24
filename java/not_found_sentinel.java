public class Main {
    public static void main(String[] args) {
        String line = args[0];
        int pos = line.indexOf(':');
        System.out.println(line.substring(pos + 1)); // CONTROL! System.out.println(pos < 0 ? "no colon" : line.substring(pos + 1));
    }
}
