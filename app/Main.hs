import System.Random

main :: IO ()
main = do
  randomNumber <- randomRIO (1 :: Int, 100 :: Int)

  putStrLn "Write a number betwen 1 and 100"
  userTry <- getLine

  let x = (read userTry :: Int)
  putStrLn ("Your number was: " ++ userTry)
  case compare x randomNumber of
    EQ -> putStrLn "Your correctly guessed then number, congratulations!"
    LT -> putStrLn $ "Your guess is smaller than the real number: " ++ show randomNumber
    GT -> putStrLn $ "Your guess is greater than the real number: " ++ show randomNumber
