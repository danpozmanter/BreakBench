<?php
declare(strict_types=1);
function process(string $request, int $id): void
{
    $buf = str_repeat("\0", 4096);
    $text = "$request#$id";
    $buf = substr_replace($buf, $text, 0, strlen($text));
    if ($buf[0] !== "{") throw new InvalidArgumentException("invalid request");
}

$n = (int)$argv[1];
$failures = 0;
for ($i = 0; $i < $n; $i++) {
    try {
        process("not json", $i);
    } catch (InvalidArgumentException $e) {
        $failures++;
    }
}
echo $failures === $n ? "done" : "unexpected", "\n";
