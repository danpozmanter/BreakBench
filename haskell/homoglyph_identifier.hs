isAdmin :: String -> Bool
isAdmin user = user == "root"

isАdmin :: String -> Bool -- BREAK!
isАdmin _ = True -- BREAK!

main :: IO ()
main = do
  let user = "guest"
  putStrLn (if isAdmin "root" then "admin" else "guest")
  putStrLn (if isАdmin user then "admin" else "guest") -- CONTROL! putStrLn (if isAdmin user then "admin" else "guest")
