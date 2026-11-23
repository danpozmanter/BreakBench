import Control.Exception

newtype ValidationError = ValidationError String deriving (Show)

instance Exception ValidationError

validate :: String -> Maybe SomeException
validate name = toException <$> problem
  where
    problem = if null name then Just (ValidationError "name") else Nothing

main :: IO ()
main = putStrLn (maybe "valid" (const "invalid") (validate "ada"))
