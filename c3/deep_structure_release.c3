import std::io;

struct Node
{
	long value;
	Node* next;
}

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	Node* head = null;
	for (long i = 0; i < n; i++)
	{
		Node* node = mem::new(Node, { .value = i, .next = head });
		head = node;
	}
	while (head)
	{
		Node* next = head.next;
		mem::free(head);
		head = next;
	}
	io::printn("done");
	return 0;
}
