class Hogar {
    const nivelDeMugre
    const comfort

    method esBueno() = nivelDeMugre <= comfort / 2 
}

class Huerta {
    const cantidadDeProduccion
    var nivelDeProduccion = 100

    method esBueno() = cantidadDeProduccion > nivelDeProduccion
    method nivelDeProduccion(nuevoNivel) {
        nivelDeProduccion = nuevoNivel
    }
}

class Mascota {
    const nivelDeSalud

    method esBueno() = nivelDeSalud > 250
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