<?php
declare(strict_types=1);
interface Animal { public function sound(): string; }
final class Dog implements Animal { public function sound(): string { return "woof"; } }
final class Cat implements Animal { public function sound(): string { return "meow"; } }

$dogs = [new Dog()];
$animals = $dogs;
$animals[0] = new Cat();
echo $dogs[0]->sound(), "\n";
