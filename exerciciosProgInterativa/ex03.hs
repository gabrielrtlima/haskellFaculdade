somador :: IO ()
somador = do
    putStrLn "Quantos numeros?"
    qtNum <- readLn :: IO Int
    res <- sequence [ readLn :: IO Int | _ <- [1 .. qtNum]]
    putStrLn ("O total é: " ++ show (sum res))

main :: IO ()
main = do
    somador