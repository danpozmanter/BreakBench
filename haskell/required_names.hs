data Offset = Offset {dx :: Int, dy :: Int}

move :: Offset -> IO ()
move o = putStrLn (show (dx o) ++ " " ++ show (dy o))

main :: IO ()
main = move (Offset 4 3)
