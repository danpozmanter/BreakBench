import std;

struct Gate { open: bool }
struct Debit { amount: i64 }
struct Done { ok: bool }

fn charge() {
    let gate = qget<Gate>();
    qput(Debit { amount: 30 });
}

thread_fn attempt() {
    charge();
    qput(Done { ok: true });
}

fn main() {
    var balance = 100;
    let t = thread_spawn(attempt);
    let done, finished = qget<Done>(100);
    if !finished {
        qput(Gate { open: true });
        qput(Gate { open: true });
        charge(); // BREAK!
    }
    thread_wait(t);
    while true {
        let debit, ok = qpoll<Debit>();
        if !ok { break; }
        balance -= debit.amount;
    }
    print(balance);
}
