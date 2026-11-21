data Account = Account { balance :: Int }

main :: IO ()
main = do
  let accounts = [Account 100]
  let accounts' = map (\acct -> acct { balance = balance acct + 50 }) accounts
  print (balance (head accounts'))
