somar :: (Eq p, Num p) => p -> p
somar 0 = 0
somar x = x + somar (x-1)