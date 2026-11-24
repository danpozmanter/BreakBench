<?php
declare(strict_types=1);
function grade(int $score): string
{
    if ($score > 50) return "pass";
    if ($score < 50) return "fail";
    // CONTROL! return "borderline";
}

echo grade((int)$argv[1]), "\n";
