main :: IO ()
main = do
  let grid = replicate 3 (replicate 3 (0 :: Int))
      grid' = [[if (r, c) == (0, 0) then 1 else cell | (c, cell) <- zip [0 :: Int ..] row] | (r, row) <- zip [0 :: Int ..] grid]
  print (length (filter (== 1) (concat grid')))
