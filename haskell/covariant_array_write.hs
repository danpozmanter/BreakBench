data Dog = Dog
data Cat = Cat

data Animal = DogAnimal Dog | CatAnimal Cat

sound :: Animal -> String
sound (DogAnimal _) = "woof"
sound (CatAnimal _) = "meow"

main :: IO ()
main = do
  let dogs = [Dog]
  let animals = dogs :: [Animal] -- BREAK!
  print (length animals) -- BREAK!
  putStrLn (sound (CatAnimal Cat))
  putStrLn (sound (DogAnimal (head dogs)))
