limit :: Int
limit = base * 2

baseValue :: Int
baseValue = read "10"

base :: Int
base = baseValue

main :: IO ()
main = print limit
