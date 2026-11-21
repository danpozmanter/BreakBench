import System.Environment (getArgs)

data User = User { name :: String } deriving Show

findUser :: Int -> Maybe User
findUser i = if i == 1 then Just (User "alice") else Nothing

main :: IO ()
main = do
  args <- getArgs
  let u = findUser (read (head args))
  print (length (name u)) -- BREAK!
  print u
