import System.Environment (getArgs)

data Value = IntValue Int | Text String

main :: IO ()
main = do
  args <- getArgs
  let v = if length args > 5 then Text (head args) else IntValue 42
  let Text s = v -- CONTROL! putStrLn (case v of Text s -> show (length s); IntValue _ -> "not text")
  print (length s) -- BREAK!
