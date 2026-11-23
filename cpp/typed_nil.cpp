#include <iostream>
#include <memory>
#include <string>

struct Error {
    virtual ~Error() = default;
};

struct ValidationError : Error {
    std::string field;
};

std::unique_ptr<Error> validate(const std::string& name) {
    std::unique_ptr<ValidationError> problem;
    if (name.empty()) {
        problem = std::make_unique<ValidationError>();
        problem->field = "name";
    }
    return problem;
}

int main() {
    std::cout << (validate("ada") ? "invalid" : "valid") << "\n";
}
