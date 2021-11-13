perfeitos :: Integral a => a -> [a]
perfeitos x = [x | x <- [1..x], x == sumFatores x]
    where sumFatores n = sum [x | x <- [1..n-1], n `mod` x == 0]