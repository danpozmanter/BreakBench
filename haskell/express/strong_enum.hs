-- LEVEL: LANGUAGE

data Color = Red | Green | Blue

name :: Color -> String
name Red = "red"
name Green = "green"
name Blue = "blue"

main :: IO ()
main = do
  let c = Green
  putStrLn (name 7) -- REJECT!
  putStrLn (name c)
