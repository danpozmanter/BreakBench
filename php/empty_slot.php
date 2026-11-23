<?php
declare(strict_types=1);

final class User
{
    public function __construct(public string $name) {}
}

$users = array_fill(0, 3, null);
$users[1] = new User("bob");
$users[2] = new User("carol");
echo strlen($users[0]->name), "\n";
