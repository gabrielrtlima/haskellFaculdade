import System.IO ()

putStr' :: String -> IO ()
putStr' [] = return ()
putStr' string = sequence_ [putChar c | c <- string]
