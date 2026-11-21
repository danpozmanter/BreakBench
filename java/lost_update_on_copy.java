import java.util.List;

public class Main {
    static class Account {
        int balance;
        Account(int b) { balance = b; }
    }

    public static void main(String[] args) {
        List<Account> accounts = List.of(new Account(100));
        for (Account acct : accounts) acct.balance += 50;
        System.out.println(accounts.get(0).balance);
    }
}
