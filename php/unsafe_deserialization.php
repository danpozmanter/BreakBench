<?php
declare(strict_types=1);

final class Session
{
    public function __construct(public string $user)
    {
    }
}

final class Cleanup
{
    public string $path = '/tmp/bb_cache';

    public function __wakeup(): void
    {
        echo "cleanup ran\n";
    }
}

$attacker = serialize(new Cleanup());
try {
    $session = unserialize($attacker);
    if (!$session instanceof Session) {
        throw new UnexpectedValueException('not a session');
    }
    echo $session->user, "\n";
} catch (Throwable) {
    echo "rejected\n";
}
