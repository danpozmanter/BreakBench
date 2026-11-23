import std;

struct ValidationError { field: u8[..16] }

fn validate(name: u8[..16], known: ValidationError[:]) -> ValidationError? {
    var problem: ValidationError? = null;
    if name.len == 0 {
        for &e in known { problem .= e; }
    }
    return problem;
}

fn main() {
    var known: ValidationError[>..] = [];
    known.push(ValidationError { field: "name" });
    if validate("ada", known) {
        print("invalid");
    } else {
        print("valid");
    }
}
