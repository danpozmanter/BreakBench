// LEVEL: STD

import std::io;
import std::os::backtrace;

fn String inner() @noinline
{
	void*[32] buffer;
	void*[] frames = backtrace::capture_current(&buffer);
	BacktraceList list = backtrace::symbolize_backtrace(tmem, frames)!!;
	DString text;
	text.init(tmem);
	foreach (bt : list) text.appendf("%s\n", bt);
	return text.str_view();
}

fn int main(String[] args)
{
	io::printn(inner().contains("inner") ? "inner" : "missing");
	return 0;
}
