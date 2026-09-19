import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {
    const pilotos = #{}
    method deltaPuntos() = 
        (pilotos.max({p => p.puntos()})).puntos() - 
        (pilotos.min({p => p.puntos()})).puntos()
    method esCompetitivo() = 
        self.deltaPuntos() < 100
    method hayPilotoDeEscuderia(escuderia) = 
        pilotos.any({p => p.escuderia() == escuderia})
    method puntosPorEscuderia(escuderia) =
        pilotos.filter({p => p.escuderia() == escuderia}).sum({p => p.puntos()})
    method registrarCierreFecha(primero, segundo, mejor) {
        primero.ganaCarrera(segundo)
        mejor.hizoVueltaRapida()
    }
    method pilotoLider() =
        pilotos.max({p => p.puntos()})
    method registrarPiloto(nombrePiloto) {
        pilotos.add(nombrePiloto)
    }
    method darDeBajaPiloto(nombrePiloto) {
        pilotos.remove(nombrePiloto)
    }
}