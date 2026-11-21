// LEVEL: STD

using System.Globalization;

var s = "abcdefgh👍🏽xyz";
var e = StringInfo.GetTextElementEnumerator(s);
var sb = new System.Text.StringBuilder();
for (int i = 0; i < 9 && e.MoveNext(); i++) sb.Append(e.GetTextElement());
Console.WriteLine(sb);
