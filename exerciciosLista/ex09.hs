produtoEscalarListas :: Num a => [a] -> [a] -> a
produtoEscalarListas xs ys = sum([x * y |(x, y) <- zip xs ys])