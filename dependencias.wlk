import autos.*

class Dependencia {
    const flota = []

    var property empleados

    const pedidosHechos = #{}

    method agregarAFlota(rodado){
        flota.add(rodado)
    }
    
    method quitarDeFlota(rodado){
        flota.remove(rodado)
    }

    method agregarPedido(unPedido){
        pedidosHechos.add(unPedido)
    }

    method sacarPedido(unPedido){
        pedidosHechos.remove(unPedido)
    }

    method pesoTotalFlota(){
        return flota.sum({r => r.peso()})
    }

    method estaBienEquipada(){
       return flota.size() >= 3 && self.todosPuedenIrA100()
    }

    method todosPuedenIrA100(){
        return flota.all({r => r.velMax() >= 100})
    }

    method capacidadTotalEnColor(color){
        return self.filtrarAutosDeColor(color).sum({r => r.capacidad()})
    }

    method filtrarAutosDeColor(color){
        return flota.filter({r => r.color() == color})
    }

    method colorDelRodadoMasRapido(){
        return flota.max({r => r.velMax()}).color()
    }

    method capacidadFaltante(){
        return (empleados - self.capacidadTotalDeLaFlota()).max(0)
    }

    method capacidadTotalDeLaFlota(){
        return flota.sum({r => r.capacidad()})
    }

    method esGrande(){
        return empleados >= 40 && flota.size() >= 5
    }

    method cantidadPasajerosEnPedidos(){
        return pedidosHechos.sum({p => p.cantidadPasajeros()})
    }

    method pedidosQueNoPuedenSerSatisfechos(){
        return pedidosHechos.filter({p => not self.hayAlgunRodadoQueSatisfaceUnPedido(p)})
    }

    method hayAlgunRodadoQueSatisfaceUnPedido(pedido){
        flota.any({a => pedido.puedeSatisfacerPedido(a)})
    }
    
    method esColorIncompatibleParaTodosLosPedidos(unColor){
        return pedidosHechos.all({c => c.coloresIncompatibles().contains(unColor)})
    }

    method relajarTodosLosPedidosHechos(){
        pedidosHechos.forEach({p => p.relajar()})
    }
}