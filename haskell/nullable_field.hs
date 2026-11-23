data User = User { name :: Maybe String }

main :: IO ()
main = do
  let decoded = User Nothing
  print (length (name decoded)) -- BREAK!
  print (maybe 0 length (name decoded)) -- CONTROL! print (maybe 0 length (name decoded))
