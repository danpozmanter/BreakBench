// LEVEL: STD

AppDomain.CurrentDomain.UnhandledException += (_, _) => Console.WriteLine("hook ran");
throw new InvalidOperationException("boom");
