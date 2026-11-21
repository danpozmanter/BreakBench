// LEVEL: STD

import std.datetime, std.format, std.stdio;

void main()
{
    auto t = SysTime(DateTime(2026, 3, 29, 1, 30, 0), UTC());
    auto local = t.toOtherTZ(PosixTimeZone.getTimeZone("Europe/Paris"));
    writefln("%04d-%02d-%02d %02d:%02d", local.year, cast(int) local.month, local.day, local.hour, local.minute);
}
