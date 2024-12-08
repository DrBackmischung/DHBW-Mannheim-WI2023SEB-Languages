add :: Int -> Int -> Int
add a b = a + b

main :: IO ()
main = putStrLn $ "Sum: " ++ show (add 5 7)
