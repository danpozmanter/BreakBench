import qualified Data.Map as Map

main :: IO ()
main = print (Map.size (Map.fromList [("a", 1), ("a", 2 :: Int)]))
