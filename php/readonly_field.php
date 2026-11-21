<?php
declare(strict_types=1);

final class Config
{
    public function __construct(public readonly int $port)
    {
    }
}

$c = new Config(8080);
$c->port = 1;
echo $c->port, "\n";
