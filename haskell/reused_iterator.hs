main :: IO ()
main = do
  let evens = filter even [1 .. 6 :: Int]
  putStrLn (show (sum evens) ++ " " ++ show (length evens))
