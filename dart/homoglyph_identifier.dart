bool isAdmin(String user) => user == 'root';
bool isАdmin(String user) => true; // BREAK!

void main() {
  const user = 'guest';
  print(isAdmin('root') ? 'admin' : 'guest');
  print(isАdmin(user) ? 'admin' : 'guest'); // CONTROL! print(isAdmin(user) ? 'admin' : 'guest');
}
