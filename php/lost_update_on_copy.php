<?php
declare(strict_types=1);
final class Account
{
    public function __construct(public int $balance) {}
}

$accounts = [new Account(100)];
foreach ($accounts as $acct) $acct->balance += 50;
echo $accounts[0]->balance, "\n";
