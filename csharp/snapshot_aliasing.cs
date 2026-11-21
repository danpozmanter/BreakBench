static void ApplyUpdate(List<int> weights)
{
    weights[1] = 5;
    weights[3] = 0;
}

var weights = new List<int> { 3, 3, 3, 3 };
var before = weights;
ApplyUpdate(weights);
Console.WriteLine(Enumerable.Range(0, weights.Count).Count(i => before[i] != weights[i]));
