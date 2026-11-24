import Foundation

func find(_ id: Int) -> Int? { id == 1 ? 36 : nil }

FileHandle.standardOutput.write(Data("before\n".utf8))
print(find(2)! + 1) // CONTROL! print(find(2).map { String($0 + 1) } ?? "missing")
