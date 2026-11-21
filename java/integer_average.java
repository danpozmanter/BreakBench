public class Main {
    public static void main(String[] args) {
        int[] values = {3, 4};
        int sum = values[0] + values[1];
        int count = values.length;
        double avg = sum / count;
        System.out.printf("%.1f%n", avg);
    }
}
