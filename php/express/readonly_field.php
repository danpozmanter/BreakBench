<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

final class Config
{
    public function __construct(public readonly int $port)
    {
    }
}

$c = new Config(8080);
try {
    $c->port = 1;
} catch (Error) {
}
echo $c->port, "\n";
