import obreros.*
import elementos.*

class Obra{
    //OBREROS Y DISPONIBILIDAD
    var obreros=[]
    var obrerosDisponibles=[]
    var deposito=[]
   
    method agregarObreros(obrero){obreros.add(obrero)}
    method quitarObreros(obrero){obreros.remove(obrero)}
   
    method obrerosADisposicion(){
        obrerosDisponibles = obreros.filter({obrero => obrero.licencia()})
        }
   
    method jornadaLaboral(){
        obrerosDisponibles.forEach({obrero => obrero.consume()})
        obrerosDisponibles.forEach({obrero => obrero.aporta()})
    }
   
    method agregarAlDeposito(elemento, num){
        elemento.cantidad(num)
        deposito.add(elemento)
    }
}

