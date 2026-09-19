
object blando {
    method duracionVueltas() = 15
    method rindeMejor(temperatura) = temperatura < 25
}

object medio {
    method duracionVueltas() = 30
    method rindeMejor(temperatura) = temperatura.between(25, 40)
}

object duro {
    method duracionVueltas() = 45
    method rindeMejor(temperatura) = temperatura > 40 
}