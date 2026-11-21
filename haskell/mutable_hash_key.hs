import qualified Data.Set as S
import System.IO (hPrint, stderr)

main :: IO ()
main = do
  let key = [1, 2 :: Int]
  let seen = S.fromList [key]
  let key' = 9 : tail key
  mapM_ (\e -> putStrLn (if S.member e seen then "found" else "lost")) (S.toList seen)
  hPrint stderr key'
