data Shape = Circle | Square

describe :: Shape -> String
describe s = case s of
  _ -> "other"
  Circle -> "circle"

main :: IO ()
main = describe Square `seq` putStrLn (describe Circle)
