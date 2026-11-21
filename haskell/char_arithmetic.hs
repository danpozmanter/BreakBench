import Data.Char (ord)

main :: IO ()
main = do
  let c = 'a'
  print (ord c + 1)
  print (c + 1 :: Int) -- BREAK!
