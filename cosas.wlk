object knightRider {

    method peso() = 500
    method peligrosidad() = 10  
 
}

object bumblebee{
    var modoAuto = true
    method peso() = 800
    method peligrosidad() = if(modoAuto) 15 else 30
    method transformarseEnAuto()  {modoAuto =true}
    method transformarseEnRobot() {modoAuto = false}
   
}

object ladrillos {
    var property cantidad = 0
    method peso() = cantidad*2
    method peligrosidad() =2
  
}

object arena {
  var property peso = 0
  method peligrosidad()=1
 
}

object bateriaAntiarea {
  var property estaConMisiles = false
  method peso() = if(estaConMisiles) 300 else 200
  method peligrosidad() = if(estaConMisiles) 100 else 0
 
}

object contenedor {
  const cosas =[]
  method agregarUnaCosa(unaCosa) {cosas.add(unaCosa)}
  method quitarUnaCosa(unaCosa) {cosas.remove(unaCosa)}
  method agregarVariasCosas(listaDeCosas) {cosas.addAll(listaDeCosas)}
  method peso() = 100 + cosas.sum({c => c.peso()})
  method peligrosidad() = 
      if(cosas.isEmpty()) 0 else cosas.max({c => c.peligrosidad()}).peligrosidad()
 
}

object residuosRadioactivos {
   var property peso = 0
   method peligrosidad() = 200
   
}

object embalajeDeSeguridad{
    var property cosaEnvuelta = arena
    method peso() = cosaEnvuelta.peso()
    method peligrosidad() =  cosaEnvuelta.peligrosidad() * 0.5
    
}