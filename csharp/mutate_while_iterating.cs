var xs = new List<int> { 1, 2, 2, 3 };
foreach (var x in xs) // CONTROL! xs.RemoveAll(x => x == 2);
{ // BREAK!
    if (x == 2) xs.Remove(x); // BREAK!
} // BREAK!
Console.WriteLine(string.Join(",", xs));
