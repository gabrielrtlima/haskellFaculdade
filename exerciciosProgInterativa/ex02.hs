module Main where

somador' :: Int -> Int -> IO Int
somador' 0 total = return total
somador' aux total = do
    valor <- readLn :: IO Int
    somador' (aux - 1) (total + valor)

somador :: IO ()
somador = do
    putStrLn "Quantos números?"
    qtNum <- readLn :: IO Int
    res <- somador' qtNum 0
    putStrLn ("O total é: " ++ show res)

main :: IO ()
main = do  
    somador