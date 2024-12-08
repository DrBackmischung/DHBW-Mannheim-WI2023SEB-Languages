square :: Int -> Int
square x = x * x

squareOfSum :: Int -> Int -> Int
squareOfSum a b = square (a + b)

main :: IO ()
main = putStrLn $ "Square of sum: " ++ show (squareOfSum 3 4)
