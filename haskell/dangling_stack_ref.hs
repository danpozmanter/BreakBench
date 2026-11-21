import Data.IORef

make :: IO (IORef Int)
make = newIORef 4242

clobber :: IO Int
clobber = return (sum (replicate 64 7))

main :: IO ()
main = do
  r <- make
  _ <- clobber
  readIORef r >>= print
