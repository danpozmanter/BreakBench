var store = new List<int>();

static async Task Save(List<int> store)
{
    await Task.Delay(50);
    lock (store) store.Add(1);
}

Save(store); // CONTROL! await Save(store);
Console.WriteLine(store.Count);
