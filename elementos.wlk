class Hogar {
    var nivelDeMugre
    const comfort

    method esBueno() = nivelDeMugre <= comfort / 2 
    method esAtacadoPor(unaPlaga) {
        nivelDeMugre += unaPlaga.nivelDeDanio()
    }
}

class Huerta {
    var cantidadDeProduccion
    
    method esBueno() = cantidadDeProduccion > valorMinimo.valor()
    method esAtacadoPor(unaPlaga) {
        cantidadDeProduccion = 0.max(cantidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1)
        cantidadDeProduccion = 0.max(cantidadDeProduccion - if(unaPlaga.transmiteEnfermedad()) 10 else 0)
    }
}

object valorMinimo {
    var valor = 100

    method valor() = valor
    method valor(nuevoValor) {
        valor = nuevoValor
    }
}

class Mascota {
    var nivelDeSalud

    method esBueno() = nivelDeSalud > 250
    method esAtacadoPor(unaPlaga) {
        nivelDeSalud = 0.max(nivelDeSalud - if(unaPlaga.transmiteEnfermedad()) unaPlaga.nivelDeDanio() else 0)
    }
}

class Barrio {
    const elementos = []

    method agregarElemento(unElemento) {
        elementos.add(unElemento)
    }
    method sacarElemento(unElemento) {
        elementos.remove(unElemento)
    }
}