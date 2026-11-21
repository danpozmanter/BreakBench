int? find(int id) => id == 1 ? 36 : null;

void main() {
  print('before');
  print(find(2)! + 1);
}
