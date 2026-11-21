<?php
// LEVEL: STD
declare(strict_types=1);

set_exception_handler(function (Throwable $e): void {
    echo "hook ran\n";
});
throw new RuntimeException("boom");
