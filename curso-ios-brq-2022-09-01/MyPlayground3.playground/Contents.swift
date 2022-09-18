class Formas {

    var perimetro : Int = 0
    var area : Int = 0
    var qtdlados : Int = 0
    var lado_x : Int = 0
    var lado_y : Int = 0
    var lado_z : Int = 0
    var altura : Int = 0

  internal func calcularArea()-> Int {
  area = lado_x * lado_x
  print("A área do quadrado é \(area)")
  return area
}

  internal func calcularPerimetro()-> Int{
  perimetro = lado_x * 4
  print("O perímetro do quadrado é \(perimetro)")
  return perimetro
}
}
class Quadrado : Formas {
}
var Quad : Quadrado = Quadrado()
Quad.perimetro = 40
Quad.area = 100
Quad.qtdlados = 4
Quad.lado_x = 10

Quad.calcularArea()

Quad.calcularPerimetro()

class Retangulo : Formas{
  
override func calcularArea()-> Int {
area = lado_x * altura
  print("A área do retangulo é \(area)")
  return area
}

override func calcularPerimetro()-> Int{
perimetro = lado_x * 2 + altura * 2
  print("O perímetro do retangulo é \(perimetro)")
  return perimetro
}


}

var Ret : Retangulo = Retangulo()
Ret.perimetro = 60
Ret.area = 200
Ret.qtdlados = 4
Ret.lado_x = 20
Ret.altura = 10

Ret.calcularArea()

Ret.calcularPerimetro()

class Triangulo : Formas{

  override func calcularArea()-> Int {
  area = lado_x * altura / 2
  print("A área do triangulo é \(area)")
  return area
}

  override func calcularPerimetro()-> Int{
  perimetro = lado_x + lado_y + lado_z
  print("O perímetro do triangulo é \(perimetro)")
  return perimetro
}
  

}

var Triang : Triangulo = Triangulo()
Triang.perimetro = 24
Triang.area = 28
Triang.qtdlados = 3
Triang.lado_x = 8
Triang.lado_y = 8
Triang.lado_z = 8
Triang.altura = 7

Triang.calcularArea()

Triang.calcularPerimetro()

class Hexagono : Formas {

    override func calcularArea()-> Int {
        area = 6 * (lado_x * lado_x * 2 / 4)
        print("A área do Hexágono é \(area)")
        return area
}


    override func calcularPerimetro()-> Int{
        perimetro = lado_x * 6
        print("O perímetro do Hexágono é \(perimetro)")
        return perimetro
}


}

var hex : Hexagono = Hexagono()
hex.perimetro = 60
hex.area = 300
hex.qtdlados = 6
hex.lado_x = 10
hex.altura = 8

hex.calcularArea()

hex.calcularPerimetro()
