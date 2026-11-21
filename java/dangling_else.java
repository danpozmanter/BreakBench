public class Main {
    public static void main(String[] args) throws Exception {
        boolean a = Integer.parseInt(args[0]) != 0;
        boolean b = true;
        String r = "unset";
        if (a)
            if (b) r = "both";
        else
            r = "not a";
        System.out.println(r);
    }
}
