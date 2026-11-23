public class Main {
    public static void main(String[] args) {
        long count = Long.parseLong(args[0]);
        long size = count * 8;
        byte[] records = new byte[(int) size];
        records[8] = 99;
        System.out.println("stored");
    }
}
