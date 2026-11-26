fn main() {
    var jobs: i64[>..] = [];
    jobs.push(1);
    jobs.push(2);
    jobs.push(3);
    assert(jobs.pop() == 3); // CONTROL! let last = jobs.pop(); assert(last == 3);
    print(jobs.len);
}
