int? find(int id) => id == 1 ? 36 : null;

void main() {
  print('before');
  print(find(2)! + 1); // CONTROL! final a = find(2); print(a == null ? "missing" : a + 1);
}
