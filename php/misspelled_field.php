<?php
declare(strict_types=1);
class Config
{
    public string $color = "blue";
}

$cfg = new Config();
$cfg->colour = "red"; // CONTROL! $cfg->color = "red";
echo $cfg->color, "\n";
