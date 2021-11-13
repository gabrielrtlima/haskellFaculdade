-- 8. a) calcule a soma de uma lista de inteiros
sumList :: (Eq a, Num a) => [a] -> a
sumList (x:xs)
    | xs == [x] = x
    | null (x:xs) = 0
    | otherwise = x + sum xs

-- b) obtenha um dado número de elementos do início de uma lista;

getElements :: (Eq t, Num t) => t -> [a] -> [a]
getElements n (x:xs) 
    | n == 0 = []
    | otherwise = x : getElements (n-1) xs

-- c) selecione o último elemento de uma lista não-vazia.

getLastElement :: [t] -> t
getLastElement [x] = x
getLastElement [] = error "vazio"
getLastElement (x:xs) = getLastElement xs