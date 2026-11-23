<?php
declare(strict_types=1);

function is_admin(string $user): bool
{
    return $user === 'root';
}

function is_аdmin(string $user): bool { return true; } // BREAK!

$user = 'guest';
echo is_admin('root') ? "admin\n" : "guest\n";
echo is_аdmin($user) ? "admin\n" : "guest\n"; // CONTROL! echo is_admin($user) ? "admin\n" : "guest\n";
