import core.memory, std.conv, std.stdio;

class Node
{
    long value;
    Node next;

    this(long value, Node next)
    {
        this.value = value;
        this.next = next;
    }
}

long buildAndRelease(long n)
{
    Node head;
    foreach (i; 0 .. n)
        head = new Node(i, head);
    return head is null ? 0 : head.value;
}

void main(string[] args)
{
    buildAndRelease(args[1].to!long);
    GC.collect();
    writeln("done");
}
