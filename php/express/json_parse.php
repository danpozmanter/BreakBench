<?php
// LEVEL: STD
declare(strict_types=1);

$good = json_decode('{"port": 8080, "debug": true}', true, flags: JSON_THROW_ON_ERROR);
try {
    json_decode('{port: 8080}', true, flags: JSON_THROW_ON_ERROR);
    $result = "valid";
} catch (JsonException) {
    $result = "invalid";
}
echo $good["port"], " ", $result, "\n";
