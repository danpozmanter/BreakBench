import Data.Time.Calendar (fromGregorian, fromGregorianValid, showGregorian)
import System.Environment (getArgs)

main :: IO ()
main = do
  [y, m, d] <- map read <$> getArgs
  putStrLn (showGregorian (fromGregorian y (fromInteger m) (fromInteger d))) -- CONTROL! putStrLn (maybe "invalid" showGregorian (fromGregorianValid y (fromInteger m) (fromInteger d)))
