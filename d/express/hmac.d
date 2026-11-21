// LEVEL: STD

import std.digest, std.digest.hmac, std.digest.sha, std.stdio, std.string;

void main()
{
    auto tag = hmac!SHA256(representation("key"))
        .put(representation("The quick brown fox jumps over the lazy dog"))
        .finish();
    writeln(toHexString!(LetterCase.lower)(tag));
}
