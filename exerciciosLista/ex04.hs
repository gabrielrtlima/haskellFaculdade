newReplicate :: Int -> a -> [a]
newReplicate x y = [x | x <- take x (repeat y)]