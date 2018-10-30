import obreros.*
import elementos.*

class Obra{
    //OBREROS Y DISPONIBILIDAD
    var obreros=[]
    var deposito=[]
   
    method agregarObreros(obrero){obreros.add(obrero)}
    method quitarObreros(obrero){obreros.remove(obrero)}
   
    method obrerosADisposicion(){
        obrerosDisponibles = obreros.filter({obrero => not obrero.licencia()})
        }
   
    method jornadaLaboral(){
        obrerosADisposicion().forEach({obrero => obrero.consume()})
        //obrerosDisponibles.forEach({obrero => obrero.aporta()})
    }
   
    method agregarAlDeposito(elemento, num){
        elemento.cantidad(num)
        deposito.add(elemento)
    }
}

