<?php
declare(strict_types=1);

final class Rec
{
    public string $data;

    public function __construct()
    {
        $this->data = str_repeat("\x01", 4096);
    }
}

$n = (int)$argv[1];
$seen = 0;
for ($i = 0; $i < $n; $i++) {
    $rec = new Rec();
    $seen += ord($rec->data[0]);
}
echo $seen === $n ? "done" : "lost", "\n";
