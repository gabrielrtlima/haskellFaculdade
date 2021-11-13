expo :: (Eq p, Floating p) => p -> p -> p
expo m n 
    | n == 0 = 1
    | otherwise =  m * (m ** (n - 1))