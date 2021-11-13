-- 5. a) Decidir se todos os números em uma lista são True
-- and :: [Bool] -> Bool

newAnd :: [Bool] -> Bool
newAnd [] = True
newAnd (x:xs) = x && newAnd xs

-- b) Concatenar uma lista de listas:
--concat :: [[a]] -> [a]

newConcat :: [[a]] -> [a]
newConcat [] = []
newConcat (x:xs) = x ++ newConcat xs

-- c) Produzir uma lista com n elementos idênticos:
-- replicate :: Int -> a -> [a]

newReplicate :: (Eq t, Num t) => t -> a -> [a]
newReplicate n x 
    | n == 0 = []
    | otherwise = x : newReplicate (n-1) x

-- d) Selecionar o n-ésimo elemento em uma lista:
-- (!!) :: [a] -> Int -> a

(!!!) :: Eq t => [t] -> Int -> t
(!!!) (x:xs) y 
    | x /= (x:xs) !! y = (!!!) xs (y-1)
    | otherwise = x

-- e) Decidir se um valor está presente em uma lista:
-- elem :: Eq a => a -> [a] -> Bool

newElem :: Eq t => t -> [t] -> Bool
newElem y (x:xs)
    | x /= y = newElem y xs
    | otherwise = True
newElem _ [] = False