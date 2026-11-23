<?php
declare(strict_types=1);

$event = json_decode('{"id": 9007199254740993}', true);
echo $event['id'], "\n";
