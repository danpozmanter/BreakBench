<?php
declare(strict_types=1);
final class User { public function __construct(public ?string $name) {} }
$decoded = new User(null);
echo strlen($decoded->name), "\n";
