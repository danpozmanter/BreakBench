import qualified Data.Set as Set

data Point = Point {px :: Int, py :: Int, label :: String} deriving (Ord)

instance Eq Point where
  a == b = px a == px b && py a == py b

main :: IO ()
main = print (Set.size (Set.fromList [Point 1 2 "a", Point 1 2 "b"]))
