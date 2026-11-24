public class Main {
    static final class Account { int balance; Account(int b) { balance = b; } }

    static void transfer(Account from, Account to, int amount) {
        // CONTROL! if (from == to) return;
        int newFrom = from.balance - amount;
        int newTo = to.balance + amount;
        from.balance = newFrom;
        to.balance = newTo;
    }

    public static void main(String[] args) {
        Account a = new Account(100);
        transfer(a, a, 30);
        System.out.println(a.balance);
    }
}
