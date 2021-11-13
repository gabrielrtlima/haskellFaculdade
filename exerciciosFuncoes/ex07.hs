import Data.List (sort)
merge :: Ord a => [a] -> [a] -> [a]
merge (x:xs) (y:ys)
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys
merge [] ys = ys
merge xs [] = xs

dividirMeio :: [a] -> ([a], [a])
dividirMeio xs = splitAt ((length xs + 1) `div` 2) xs


mergeSort :: Ord a => [a] -> [a]
mergeSort xs = merge(sort (fst listDividida)) (sort(snd listDividida))
    where listDividida = dividirMeio xs