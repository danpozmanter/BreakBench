const header = 5;

void main(List<String> args) {
  final message = args[0];
  final payload = message.length - header;
  if (payload < 0) {
    print("short");
  } else {
    print(payload);
  }
}
