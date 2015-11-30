//: Minireto2 - velocimetro

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init ( ){
        self = .Apagado
    }

}



class Auto {
    var velocidad : Velocidades
 
    
    init ( velocidad : Velocidades ){
        self.velocidad = velocidad
        
    }
    
    
    func cambioDeVelocidad ( velocidadActual : Velocidades  ) -> (Int , String )
    {
        
        switch self.velocidad.rawValue {
        case  0:
            self.velocidad = .VelocidadBaja
            let resultado = (self.velocidad.rawValue, "Velocidad Baja" )
            return resultado
        case 20:
            
            self.velocidad = .VelocidadMedia
            let resultado = (self.velocidad.rawValue,"Velocidad Media")
            return resultado
        case 50:
            
            self.velocidad = .VelocidadAlta
            let resultado = (self.velocidad.rawValue,"Velocidad Alta")
            return resultado
        case 120:
            
            self.velocidad = .Apagado
            let resultado = (self.velocidad.rawValue,"Apagado")
            return resultado
        default:
            let resultado = (999, "DESCONOCIDA" )
            return resultado
        }
       
    }
}

var velocidadInicial = Velocidades()

var miAuto = Auto( velocidad : velocidadInicial)


var velocidadActual = (0,"APAGADO" )

var veces = 1...20

for  vez in veces
    {
        
        velocidadActual = miAuto.cambioDeVelocidad(miAuto.velocidad )
        
        print("\(vez) Velocidad \(velocidadActual.0) \(velocidadActual.1) ")
}
