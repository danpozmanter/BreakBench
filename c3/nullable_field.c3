import std::io;
faultdef MISSING;

struct User { String? name; }

fn int main(String[] args) {
    User decoded = { MISSING~ };
    io::printfn("%d", decoded.name!!.len);
    return 0;
}
