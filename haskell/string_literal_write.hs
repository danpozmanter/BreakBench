import Data.Array.IO (writeArray)

main :: IO ()
main = do
  let greeting = "hello"
  writeArray greeting 0 'j' -- BREAK!
  putStrLn greeting
