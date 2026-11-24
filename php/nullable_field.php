<?php
declare(strict_types=1);
final class User { public function __construct(public ?string $name) {} }
$decoded = new User(null);
echo strlen($decoded->name), "\n"; // CONTROL! echo $decoded->name === null ? "no name" : strlen($decoded->name), "\n";
