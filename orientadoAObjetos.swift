enum Velocidades: Int{
    case apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    
    var velocidad : Velocidades
    

    
    init( ){
        self.velocidad = Velocidades.apagado
    }
    
    func cambioDeVelocidad( ) -> (actual : Int, velocidadEnCadena: String) {
        var velocEnCadena : String = "Apagado"
        switch velocidad {
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            velocEnCadena = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            velocEnCadena = "Velocidad Media"
        case .apagado:
            velocidad = .VelocidadBaja
            velocEnCadena = "Velocidad Baja"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            velocEnCadena = "Velocidad Media"
        default:
            velocidad = .apagado
            velocEnCadena = "Apagado"
        }
        
        return (velocidad.rawValue, velocEnCadena)
    }
}

var auto = Auto()

print("\(auto.velocidad.rawValue), \(auto.velocidad)")


for _ in 1...20 {
    auto.cambioDeVelocidad()
    print("\(auto.velocidad.rawValue), \(auto.velocidad)")
}





