import std::io;

struct Node
{
	Node* next;
	char[2048] payload;
}

alias Callback = fn usz(Obj* self);

struct Obj
{
	char[2048] payload;
	Callback callback;
}

fn usz payload_len(Obj* self) => self.payload.len;

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	usz total = 0;
	for (long i = 0; i < n; i++)
	{
		Node* a = mem::new(Node);
		Node* b = mem::new(Node);
		a.next = b;
		b.next = a;
		Obj* o = mem::new(Obj);
		o.callback = &payload_len;
		total += o.callback(o);
		mem::free(a);
		mem::free(b);
		mem::free(o);
	}
	io::printn(total == 0 ? "unreachable" : "done");
	return 0;
}
