var cfg = new Config();
cfg.Colour = "red"; // BREAK!
Console.WriteLine(cfg.Color);

class Config
{
    public string Color = "blue";
}
