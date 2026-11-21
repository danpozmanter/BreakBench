<?php
// LEVEL: STD
declare(strict_types=1);

$t = new DateTimeImmutable("2026-03-29 01:30", new DateTimeZone("UTC"));
echo $t->setTimezone(new DateTimeZone("Europe/Paris"))->format("Y-m-d H:i"), "\n";
