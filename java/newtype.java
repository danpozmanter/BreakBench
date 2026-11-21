public class Main {
    record Meters(double v) {
        Meters plus(Meters o) { return new Meters(v + o.v); }
    }

    record Seconds(double v) {}

    public static void main(String[] args) {
        Meters total = new Meters(2).plus(new Meters(3));
        Meters wrong = new Meters(2).plus(new Seconds(3)); // BREAK!
        System.out.println(total.v());
    }
}
