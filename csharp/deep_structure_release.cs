static long BuildAndRelease(long n)
{
    Node? head = null;
    for (long i = 0; i < n; i++) head = new Node(i, head);
    return head?.Value ?? 0;
}

BuildAndRelease(long.Parse(args[0]));
GC.Collect();
Console.WriteLine("done");

record Node(long Value, Node? Next);
