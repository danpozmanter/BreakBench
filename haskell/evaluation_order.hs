import Data.IORef

pair :: Int -> Int -> String
pair a b = show a ++ " " ++ show b

main :: IO ()
main = do
  n <- newIORef 0
  let next = modifyIORef n (+ 1) >> readIORef n
  s <- pair <$> next <*> next
  putStrLn s
