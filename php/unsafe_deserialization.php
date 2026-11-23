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

// unserialize()'s documentation sends untrusted input to json_decode().
$attacker = serialize(new Cleanup());
try {
    $data = json_decode($attacker, true, 512, JSON_THROW_ON_ERROR);
    $session = new Session($data['user']);
    echo $session->user, "\n";
} catch (Throwable) {
    echo "rejected\n";
}
