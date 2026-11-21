main :: IO ()
main = do
  let weights = [3, 3, 3, 3 :: Int]
  let before = weights
  let weights' = [if i == 1 then 5 else if i == 3 then 0 else w | (i, w) <- zip [0 :: Int ..] weights]
  print (length (filter id (zipWith (/=) before weights')))
