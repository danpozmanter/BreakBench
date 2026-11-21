<?php
// LEVEL: STD
declare(strict_types=1);

$stored = password_hash("hunter2", PASSWORD_DEFAULT);
echo var_export(password_verify("hunter2", $stored), true), " ", var_export(password_verify("wrong", $stored), true), "\n";
