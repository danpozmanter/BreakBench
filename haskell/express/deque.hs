-- LEVEL: STD

import Data.Sequence (ViewL (..), ViewR (..), viewl, viewr, (<|), (|>))
import qualified Data.Sequence as Seq

main :: IO ()
main = do
  let d = (0 <| (Seq.empty |> 1)) |> (2 :: Int)
  case (viewl d, viewr d) of
    (front :< _, _ :> back) -> putStrLn (show front ++ " " ++ show back)
    _ -> putStrLn "empty"
