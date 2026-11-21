<?php
declare(strict_types=1);
final class User
{
    public function __construct(public string $name) {}
}

function find_user(int $id): ?User
{
    return $id === 1 ? new User("alice") : null;
}

$u = find_user((int)$argv[1]);
echo strlen($u->name), "\n";
