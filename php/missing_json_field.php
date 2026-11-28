<?php
declare(strict_types=1);

$user = json_decode('{"name": "Ada"}', true); // CONTROL! $user = json_decode('{"name": "Ada", "age": 36}', true);
echo $user['age'] + 1, "\n";
