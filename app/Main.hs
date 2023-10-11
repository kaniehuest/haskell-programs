import System.Random

main :: IO ()
main = do
  -- randomNumber <- randomRIO (1 :: Int, 100 :: Int)
  let randomNumber = 5

  putStrLn "How many tries do you want?"
  userTries <- getLine

  putStrLn "Write a number betwen 1 and 100\n"
  let userTriesNumber = (read userTries :: Int)
  doComparisonNTimes userTriesNumber randomNumber


doComparisonNTimes 0 randomNumber = do
  putStrLn "Out of tries."
  putStrLn $ "The number was: " ++ show randomNumber
  return ()

doComparisonNTimes n randomNumber =
  do
  userTry <- getLine
  let userTryNumber = (read userTry :: Int)
  case compare userTryNumber randomNumber of
    EQ -> do 
      putStrLn "Your correctly guessed then number, congratulations!"
      return ()
    LT -> do
      putStrLn "Your guess is smaller than the real number.\n"
      doComparisonNTimes (n-1) randomNumber
    GT -> do
      putStrLn "Your guess is greater than the real number.\n"
      doComparisonNTimes (n-1) randomNumber
  