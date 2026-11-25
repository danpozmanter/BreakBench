import std;

struct Answer { value: i64 }

thread_fn worker() {
    qput(Answer { value: 42 });
}

fn first_answer(workers: i64[2]&) -> i64 {
    for &w in workers { w = thread_spawn(worker); }
    return qget<Answer>().value;
}

fn main() {
    var workers: i64[2] = [0, 0];
    print(first_answer(workers));
    for w in workers { thread_wait(w); }
    print("done");
}
