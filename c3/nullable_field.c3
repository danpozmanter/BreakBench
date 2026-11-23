import std::io;

struct User { ZString name; }

fn int main(String[] args) {
    User decoded = { null };
    io::printfn("%d", decoded.name.len());
    return 0;
}
