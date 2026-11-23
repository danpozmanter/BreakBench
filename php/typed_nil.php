<?php
declare(strict_types=1);

class ValidationError extends Exception
{
}

function validate(string $name): ?Exception
{
    $problem = $name === '' ? new ValidationError('invalid name') : null;
    return $problem;
}

echo validate('ada') !== null ? "invalid\n" : "valid\n";
