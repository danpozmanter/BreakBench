data Shape = Circle | Square

describe :: Shape -> String
describe s = case s of
  _ -> "other" -- CONTROL! Circle -> "circle"
  Circle -> "circle" -- CONTROL! _ -> "other"

main :: IO ()
main = describe Square `seq` putStrLn (describe Circle)
