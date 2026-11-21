-- LEVEL: LANGUAGE

data P = P Int Int deriving (Eq)

main :: IO ()
main = putStrLn (if P 1 2 == P 1 2 then "equal" else "different")
