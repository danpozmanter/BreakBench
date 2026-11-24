import std::io;

struct User { ZString name; }

fn int main(String[] args) {
    User decoded = { null };
    io::printfn("%d", decoded.name.len()); // CONTROL! if (decoded.name != null) { io::printfn("%d", decoded.name.len()); } else { io::printn("no name"); }
    return 0;
}
