<?php
declare(strict_types=1);

final class Report
{
    public function write(string $text): void
    {
        throw new RuntimeException('disk full');
    }

    public function close(): void
    {
        throw new RuntimeException('close failed');
    }
}

function save(): void
{
    $report = new Report();
    try {
        $report->write('totals');
    } finally {
        $report->close();
    }
}

try {
    save();
} catch (RuntimeException $error) {
    echo $error->getMessage(), "\n";
}
