using System.Diagnostics;

var jobs = new List<int> { 1, 2, 3 };
int TakeLast()
{
    int last = jobs[^1];
    jobs.RemoveAt(jobs.Count - 1);
    return last;
}
Debug.Assert(TakeLast() == 3); // CONTROL! int last = TakeLast(); Debug.Assert(last == 3);
Console.WriteLine(jobs.Count);
