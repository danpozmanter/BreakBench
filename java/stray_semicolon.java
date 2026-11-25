public class Main {
    static String size(int n) {
        String label = "small";
        if (n > 5); // CONTROL! if (n > 5)
        {
            label = "big";
        }
        return label;
    }

    public static void main(String[] args) {
        System.out.println(size(Integer.parseInt(args[0])));
        System.out.println(size(Integer.parseInt(args[1])));
    }
}
