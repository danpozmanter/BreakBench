<?php
declare(strict_types=1);
function save(string $path): bool
{
    return file_put_contents($path, "data") !== false;
}

save("/dev/null/out.txt"); // CONTROL! echo save("/dev/null/out.txt") ? "saved" : "failed", "\n";
echo "saved\n"; // BREAK!
