listaGeradora :: [Integer]
listaGeradora = concat [[x | x <- [1,2]], [y | y <- [3,4]]]