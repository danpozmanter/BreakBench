import std.stdio;

void main()
{
    int[] values = [3, 4];
    int sum = values[0] + values[1];
    int count = cast(int) values.length;
    double avg = sum / count; // CONTROL! double avg = cast(double) sum / count;
    writefln("%.1f", avg);
}
