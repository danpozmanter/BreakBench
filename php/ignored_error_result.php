<?php
declare(strict_types=1);
function save(string $path): bool
{
    return file_put_contents($path, "data") !== false;
}

save("/nonexistent/dir/out.txt");
echo "saved\n";
