<?php
// LEVEL: STD
declare(strict_types=1);

$strong = new stdClass();
$weak = WeakReference::create($strong);
unset($strong);
echo $weak->get() === null ? "gone" : "alive", "\n";
