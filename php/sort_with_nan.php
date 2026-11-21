<?php
declare(strict_types=1);
$xs = [5.0, NAN, 3.0, 1.0, NAN, 4.0, 2.0];
sort($xs);
$finite = array_values(array_filter($xs, fn($x) => !is_nan($x)));
$ordered = true;
for ($i = 1; $i < count($finite); $i++) {
    if ($finite[$i - 1] > $finite[$i]) $ordered = false;
}
echo $ordered ? "ordered" : "unordered", "\n";
