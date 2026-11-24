<?php
declare(strict_types=1);

final class Frame
{
    public array $buf = [1, 2, 3, 4];
    public int $secret = 42;
}

$f = new Frame();
echo $f->buf[(int)$argv[1]], "\n"; // CONTROL! $i = (int)$argv[1]; echo array_key_exists($i, $f->buf) ? $f->buf[$i] : "out of range", "\n";
