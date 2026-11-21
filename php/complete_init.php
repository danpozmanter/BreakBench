<?php
declare(strict_types=1);

final class Config
{
    public function __construct(public int $timeout, public int $retries)
    {
    }
}

$c = new Config(timeout: 30); // CONTROL! $c = new Config(timeout: 30, retries: 3);
echo $c->retries, "\n";
