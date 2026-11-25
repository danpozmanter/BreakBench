<?php
declare(strict_types=1);

final class Counter
{
    public int $count = 0;

    public function increment(): void
    {
        $this->count++;
    }
}

function run_twice(callable $f): void
{
    $f();
    $f();
}

$counter = new Counter();
run_twice($counter->increment(...));
echo $counter->count, "\n";
