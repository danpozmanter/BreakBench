main :: IO ()
main = do
  let names =
        [ "alice"
        , "bob" -- BREAK!
          "carol" -- BREAK!
        -- CONTROL! , "bob"
        -- CONTROL! , "carol"
        ]
  print (length names)
