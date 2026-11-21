
public class Main {
    public static void main(String[] args) {
        String greeting = "hello";
        greeting[0] = 'j'; // CONTROL! greeting = "j" + greeting.substring(1);
        System.out.println(greeting);
    }
}
