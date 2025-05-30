import autos.*
import dependencias.*


class Pedidos{

    var property distanciaARecorrer
    var property tiempoMaximo
    var property cantidadPasajeros
    const property coloresIncompatibles = #{}
    
    method initialize(){
        if(not distanciaARecorrer.between(1, 1000)){
            self.error(distanciaARecorrer.toString() + " no es una distancia valida") }
        if(not tiempoMaximo.between(1, 20)){
            self.error(tiempoMaximo.toString() + " no es un tiempo maximo valido") }
        if(not cantidadPasajeros.between(1, 100)){
            self.error(cantidadPasajeros.toString() + " no es un tiempo maximo valido") }
    }   
    
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

    method agregarColorIncompatible(unColor){
        coloresIncompatibles.add(unColor)
    }
}