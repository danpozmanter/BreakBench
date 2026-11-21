<?php
declare(strict_types=1);
class Config
{
    public string $color = "blue";
}

$cfg = new Config();
$cfg->colour = "red";
echo $cfg->color, "\n";
