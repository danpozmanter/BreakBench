import std.stdio;

void applyUpdate(int[] weights)
{
    weights[1] = 5;
    weights[3] = 0;
}

void main()
{
    int[] weights = [3, 3, 3, 3];
    auto before = weights;
    applyUpdate(weights);
    int changes = 0;
    foreach (i; 0 .. weights.length)
        if (before[i] != weights[i]) changes++;
    writeln(changes);
}
