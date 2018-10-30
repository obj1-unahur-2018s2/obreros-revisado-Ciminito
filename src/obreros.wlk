import elementos.*

class Obreros {
    var property licencia = false
    method aporta()
    method consume()
   
   
}

class Albanil inherits Obreros{
    override method aporta(){}
    override method consume(){
        ladrillos.cantidad(ladrillos.cantidad()-100)
    }
   
}

class Gasista inherits Obreros{
    override method aporta(){}
    override method consume(){
        canio.cantidad(canio.cantidad()-3)
        fosforo.cantidad(fosforo.cantidad()-20)
    }
}

class Plomero inherits Obreros{
    override method aporta(){}
    override method consume(){
        canio.cantidad(canio.cantidad()-10)
        arandela.cantidad(arandela.cantidad()-30)
    }
}

class Electricista inherits Obreros{
    override method aporta(){}
    override method consume(){
        cable.cantidad(cable.cantidad()-4)
        cinta.cantidad(cinta.cantidad()-1)
    }
}