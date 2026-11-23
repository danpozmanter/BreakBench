<?php
declare(strict_types=1);

final class User
{
    public function __construct(public string $name) {}
}

final class Session
{
    public function __construct(public ?User $user) {}
}

function logout(Session $session): void
{
    $session->user = null;
}

$session = new Session(new User("alice"));
if ($session->user !== null) {
    logout($session);
    echo strlen($session->user->name), "\n";
}
