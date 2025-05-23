class Corsa{

  var property color
  
  method capacidad(){
    return 4
  }

  method peso(){
    return 1300
  }

  method velMax(){
    return 150
  }

}
// new Corsa(color = "verde")

class Kwid{

  var property tieneTanqueAdicional

  method capacidad() = if(tieneTanqueAdicional) 4 else 3
 
 /* method capacidad(){
    if(tieneTanqueAdicional){
      return 4
    } else{
      return 3
    }
  }
  */

  method velMax(){
    if(tieneTanqueAdicional){
      return 120
    } else{
      return 110
    }
  }

  method peso(){
    if(tieneTanqueAdicional){
      return 1350
    } else{
      return 1200
    }
  }

  method color(){
    return ("azul")
  }
}

object traffic{

  var property interior = interiorComodo
  var property motor = motorBataton

  method capacidad(){
    return interior.capacidad()
  }

  method velMax(){
    return motor.velMax()
  }

  method peso(){
    return 4000 + motor.peso() + interior.peso()
  }

  method color(){
    return "blanco"
  }
}

object interiorComodo{
  method capacidad(){
    return 5
  }

  method peso(){
    return 700
  }
}

object interiorPopular{
  method capacidad(){
    return 12
  }

  method peso(){
    return 1000
  }
}

object motorPulenta{

  method peso(){
    return 800
  }

  method velMax(){
    return 130
  }
}

object motorBataton{

  method peso(){
    return 500
  }

  method velMax(){
    return 80
  }
}

class Especial{

  var property capacidad
  var property velMax
  const property peso
  var property color
}