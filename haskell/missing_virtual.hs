class Shape a where
  area :: a -> Int
  area _ = 0
  describe :: a -> String
  describe s = "area " ++ show (area s)

data Square = Square

instance Shape Square where
  area _ = 4

main :: IO ()
main = putStrLn (describe Square)
