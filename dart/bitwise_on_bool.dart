void main() {
  const s = '';
  print((s.isNotEmpty) & (s[0] == 'a') ? 'yes' : 'no'); // CONTROL! print(s.isNotEmpty && s[0] == 'a' ? 'yes' : 'no');
}
