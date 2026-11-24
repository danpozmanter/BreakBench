import System.Environment (getArgs)

data Color = Red | Green | Blue

name :: Color -> String
name c = case c of
  Red -> "red"
  Green -> "green"
  -- CONTROL! Blue -> "blue"

main :: IO ()
main = do
  args <- getArgs
  putStrLn (name ([Red, Green, Blue] !! read (head args)))
