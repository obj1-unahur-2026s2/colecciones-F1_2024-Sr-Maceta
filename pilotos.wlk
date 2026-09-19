import campeonato.*
import escuderias.*
import neumaticos.*

object verstappen {
    var puntos = 437
    var neumaticos = blando
    var vueltasRestantes = neumaticos.duracionVueltas()

    method puntos() = puntos
    method escuderia() = redBull
    method vueltasQueLeQuedan() = vueltasRestantes
    method ganaCarrera(segundo) {
        puntos += 25
    }
    method hizoVueltaRapida() {
        if(puntos > 200){
            puntos += 1
        }
    }
    method sumarUnaVuelta() {
        vueltasRestantes -= 1
    }
    method entrarAlPitStop(nuevoNeumatico) {
        neumaticos = nuevoNeumatico
        vueltasRestantes = neumaticos.duracionVueltas()
    }
    method modificarPuntos(cantidad) {
        puntos += cantidad
    }
}

object norris {
    var puntos = 374
    var neumaticos = blando
    var vueltasRestantes = neumaticos.duracionVueltas()

    method puntos() = puntos
    method escuderia() = mclaren
    method vueltasQueLeQuedan() = vueltasRestantes
    method ganaCarrera(segundo) {
        puntos += 25
        if(segundo.escuderia() == self.escuderia()){
            segundo.modificarPuntos(3)
        }
    }
    method hizoVueltaRapida() {
        if(puntos > 200){
            puntos += 1
        }
    }
    method sumarUnaVuelta() {
        vueltasRestantes -= 1
    }
    method entrarAlPitStop(nuevoNeumatico) {
        neumaticos = nuevoNeumatico
        vueltasRestantes = neumaticos.duracionVueltas()
    }
    method modificarPuntos(cantidad) {
        puntos += cantidad
    }
}

object sainz {
    var puntos = 241
    var neumaticos = blando
    var vueltasRestantes = neumaticos.duracionVueltas()
    var ganoCarreraAnterior = false

    method puntos() = puntos
    method escuderia() = ferrari
    method vueltasQueLeQuedan() = vueltasRestantes
    method ganaCarrera(segundo) {
        puntos += 25
        if(ganoCarreraAnterior){
            puntos += 10
        }
        ganoCarreraAnterior = true
    }
    method hizoVueltaRapida() {}
    method sumarUnaVuelta() {
        vueltasRestantes -= 1
    }
    method entrarAlPitStop(nuevoNeumatico) {
        neumaticos = nuevoNeumatico
        vueltasRestantes = neumaticos.duracionVueltas()
    }
    method modificarPuntos(cantidad) {
        puntos += cantidad
    }
}

object leclerc {
    var puntos = 356
    var neumaticos = blando
    var vueltasRestantes = neumaticos.duracionVueltas()

    method puntos() = puntos
    method escuderia() = ferrari
    method vueltasQueLeQuedan() = vueltasRestantes
    method ganaCarrera(segundo) {
        puntos += 25
        segundo.modificarPuntos(-3)
    }
    method hizoVueltaRapida() {
        puntos += 2
    }
    method sumarUnaVuelta() {
        vueltasRestantes -= 1
    }
    method entrarAlPitStop(nuevoNeumatico) {
        neumaticos = nuevoNeumatico
        vueltasRestantes = neumaticos.duracionVueltas()
    }
    method modificarPuntos(cantidad) {
        puntos += cantidad
    }
}

object piastri {
    var puntos = 292
    var neumaticos = blando
    var vueltasRestantes = neumaticos.duracionVueltas()

    method puntos() = puntos
    method escuderia() = mclaren
    method vueltasQueLeQuedan() = vueltasRestantes
    method ganaCarrera(segundo) {
        puntos += 25
    }
    method hizoVueltaRapida() {}
    method sumarUnaVuelta() {
        vueltasRestantes -= 1
    }
    method entrarAlPitStop(nuevoNeumatico) {
        neumaticos = nuevoNeumatico
        vueltasRestantes = neumaticos.duracionVueltas()
    }
    method modificarPuntos(cantidad) {
        puntos += cantidad
    }
}