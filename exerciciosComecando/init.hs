newInit :: [a] -> [a]
newInit xs = reverse (drop 1 (reverse xs))