import System.Environment (getArgs)

walk :: Int -> Int
walk 0 = 0
walk n = (walk (n - 1) * 31 + n) `mod` 1000000007
-- CONTROL! powMod b e = if e == 0 then 1 else let h = powMod b (e `div` 2) in (if even e then h * h else h * h * b) `mod` 1000000007

main :: IO ()
main = do
  args <- getArgs
  print (walk (read (head args))) -- CONTROL! print (let n = read (head args) :: Integer; m = 1000000007 in ((powMod 31 (n + 1) - 31 * (n + 1) + n) * powMod 900 (m - 2)) `mod` m)
