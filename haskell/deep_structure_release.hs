import System.Environment (getArgs)

data Node = Node Int (Maybe Node)

build :: Int -> Maybe Node -> Maybe Node
build 0 acc = acc
build n acc = build (n - 1) (Just (Node n acc))

size :: Maybe Node -> Int
size = go 0 where
  go k Nothing = k
  go k (Just (Node _ nxt)) = go (k + 1) nxt

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  let list = build n Nothing
  size list `seq` putStrLn "done"
