import std.stdio;

int[] jobs = [1, 2, 3];

int takeLast()
{
    int last = jobs[$ - 1];
    jobs = jobs[0 .. $ - 1];
    return last;
}

void main()
{
    assert(takeLast() == 3); // CONTROL! int last = takeLast(); assert(last == 3);
    writeln(jobs.length);
}
