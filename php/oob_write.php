<?php
declare(strict_types=1);
final class Frame
{
    public array $buf = [0, 0, 0, 0];
    public int $guard = 7;
}

$f = new Frame();
$f->buf[(int)$argv[1]] = 99;
echo $f->guard, "\n";
