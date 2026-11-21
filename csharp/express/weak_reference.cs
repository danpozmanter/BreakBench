// LEVEL: STD

using System.Runtime.CompilerServices;

var weak = Make();
GC.Collect();
GC.WaitForPendingFinalizers();
Console.WriteLine(weak.TryGetTarget(out _) ? "alive" : "gone");

[MethodImpl(MethodImplOptions.NoInlining)]
static WeakReference<object> Make() => new(new object());
