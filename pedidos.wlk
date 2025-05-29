import autos.*
import dependencias.*


class Pedidos{

    var distanciaARecorrer
    var tiempoMaximo
    var property cantidadPasajeros
    const coloresIncompatibles
    
    method velocidadRequerida(){
        return distanciaARecorrer / tiempoMaximo
    }

    method puedeSatisfacerPedido(auto){
    return ( auto.velMax() - self.velocidadRequerida() ) > 10 &&
           auto.capacidad() >= cantidadPasajeros &&
           not coloresIncompatibles.contains(auto.color())
    }

    method acelerar(){
        tiempoMaximo = tiempoMaximo - 1
    }

    method relajar(){
        tiempoMaximo = tiempoMaximo + 1
    }
}