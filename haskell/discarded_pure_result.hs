import Data.Char (toUpper)

main :: IO ()
main = do
  let name = "ada"
  map toUpper name -- BREAK!
  putStrLn name
