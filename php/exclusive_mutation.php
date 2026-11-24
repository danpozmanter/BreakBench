<?php
declare(strict_types=1);

final class Account
{
    public function __construct(public int $balance)
    {
    }
}

function transfer(Account $from, Account $to, int $amount): void
{
    // CONTROL! if ($from === $to) return;
    $newFrom = $from->balance - $amount;
    $newTo = $to->balance + $amount;
    $from->balance = $newFrom;
    $to->balance = $newTo;
}

$a = new Account(100);
transfer($a, $a, 30);
echo $a->balance, "\n";
