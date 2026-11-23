import std::io;
import std::os::process;

fn int main(String[] args)
{
	char[64] buffer;
	String message = process::run_capture_stdout(&buffer, { "sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234" })!!;
	io::printn(message);
	return 0;
}
