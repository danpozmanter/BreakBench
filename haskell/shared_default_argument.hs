addItem :: String -> Maybe [String] -> [String]
addItem item cart = maybe [] id cart ++ [item]

main :: IO ()
main = do
  let _ = addItem "x" Nothing
  let b = addItem "y" Nothing
  print (length b)
