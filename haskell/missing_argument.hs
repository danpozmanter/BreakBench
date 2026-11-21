import System.Environment (getArgs)

area :: Int -> Int -> Int
area w h = w * h

main :: IO ()
main = do
  print (area 3) -- BREAK!
  print (area 3 4)
