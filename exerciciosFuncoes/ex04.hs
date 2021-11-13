euclides :: Int -> Int -> Int
euclides 0 y = y
euclides x y = euclides (y `rem` x) x