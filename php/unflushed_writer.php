<?php
declare(strict_types=1);

$report = fopen('/tmp/bb_report.txt', 'w');
fwrite($report, "total=42\n");
