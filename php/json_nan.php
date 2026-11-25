<?php
declare(strict_types=1);
$count = (int)$argv[1];
$mean = 0.0 / $count; // CONTROL! $mean = fdiv(0.0, $count);
echo json_encode(['mean' => $mean]), "\n"; // CONTROL! try { echo json_encode(['mean' => $mean], JSON_THROW_ON_ERROR), "\n"; } catch (JsonException) { echo "refused\n"; }
