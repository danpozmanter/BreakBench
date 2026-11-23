<?php
declare(strict_types=1);

@mkdir('/tmp/bb_files', 0755, true);
file_put_contents('/tmp/bb_files/report.txt', "secret\n");

$name = "report.txt\0.png";
if (!str_ends_with($name, '.png')) {
    echo "rejected\n";
} else {
    try {
        $text = file_get_contents('/tmp/bb_files/' . $name);
        echo $text === false ? "rejected\n" : $text;
    } catch (Throwable) {
        echo "rejected\n";
    }
}
