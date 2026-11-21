-- LEVEL: LANGUAGE

class Shape a where
  describe :: a -> String
  describe _ = "shape"

data Circle = Circle

instance Shape Circle where
  describe _ = "circle"
  descibe _ = "circle" -- REJECT!

main :: IO ()
main = putStrLn (describe Circle)
