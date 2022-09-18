import UIKit

var greeting = "Hello, playground"


print(greeting)

// ou

/*
Bloco de código
*/


// imprimir texto no console - print()
//print("Hello World")

// declarei uma variável com o nome `name`  e atribui o valor Fabrizio
// let name = "Fabrizio"
// print(name)

// declarar a variável como var permite alterar o seu valor
// var lastname = "Borelli"
// print(lastname)

// lastname = "Ferreira Borelli"

// Tipos de variáveis

// Int 10 , Double 1.56 , String "iOS" , Bool false/true

/*
let age: Int = 10

let y : String = "25"
print( "O valor de y é \(y) poderia ter mais texto" )

let x = Int(y)
print(x)

let price : Double = 1.5
let priceInt : Int = Int(price)
*/

// Expressões Lógicas

// let result : Bool = 2 > 3
// print("O valor de result é \(result)")

// Outros tipos de operadores lógicos

// !=  (diferente de )

let x1 : Int = 30
let x2 : Int = 30

// print("X1 é diferente de X2? \(x1 != x2)")

// operador de igualdade ==

// print("X1 é igual de X2? \(x1 == x2)")

// operador de maior >, >=, <, <=

// AND &&
// OR ||
// incremental +=

// var i = 0
// i = i + 1
// operador de incremento
// i += 1

// condicional em SWIFT ----- if

/*
if (x1 < x2) {
  //if true == true{
    print("X1 é menor que X2")
  //}
  
}
//senão se
else if (x1 > x2){
// if (x1 > x2){
  print("X1 é maior que X2")
}
// else (caso contrário - senão)
else {
  print("X1 é igual a X2")
}

*/

/*
// var usernames : [String] = []
var usernames : [String] = ["user1", "user2"]

print(usernames[1])

usernames.append("user3")
print(usernames)
print("O número de elementos é \(usernames.count)")
print("O array está vazio? \(usernames.isEmpty)")

// podemos remover todos os elementos de um array
usernames.removeAll()
// remover os elementos de um array em uma posição (índice) específica/o
usernames.remove(at: 0)

// alterar o valor em um determinado índice
usernames[0] = "userAlterado"
*/

// Estruturas de repetição (while, for, repeat- do while)

// while

var counter : Int = 0

//while count < 10 {
//  print("O valor de count é \(counter)")
//  counter += 1
//}

var usernames : [String] = ["user1", "user2"]

//usernames.append("user 3")

// como imprimir todos os valores do array username com while

//counter = 0

//while counter < usernames.count{
//  print("Valor while \(usernames[counter])")
//  counter += 1
//}

// for
// gerar uma sequencia de números de 0 até username.count-1

// 0 < index <= 10
/*for index in 0..<usernames.count{
  if index % 2 == 0 {
    print("O índice \(index) é par")
  }
  
  print("Valor for do índice \(index) é \(usernames[index])")
}*/

// for index in 0..<10{ -> 0 < index < 10

//print(5%2)

/*

  criar um array com o nome da variável "students" do tipo String e adicionar 100 elementos neste array com o seguinte texto: "student 0".

  depois calcular a soma de 0 até 99.

  Imprimir os estudantes com índice ímpar no vetor
*/

// inicializar o array vazio
var students : [String] = []
var sum : Int = 0

/*
for ind in 0..<100{
  students.append("student \(ind)")
  sum += ind

  if ind % 2 == 1{
    print("Ind \(ind) Name: \(students[ind])")
    //print("Ind \(ind) Name: student \(ind)")
  }
}
print("O valor da soma de 0 até 99 é \(sum)")
*/

/*
var counterWhile : Int = 0

while counterWhile < 100 {
  students.append("student \(counterWhile)")
  sum += counterWhile

  if counterWhile % 2 == 1{
    print("Ind \(counterWhile) Name: \(students[counterWhile])")
    //print("Ind \(ind) Name: student \(ind)")
  }

  counterWhile += 1
}

print("O valor da soma de 0 até 99 é \(sum)")

*/

/*
Estrutura de dicionário (chave-valor)
*/

/*
// 'google' - 2
//  'apple' - 3
//  'xioami' - 4


// dicionário vazio [:]
var dict : [String: Int] = [:]

dict["google"] = 2
dict["apple"] = 3
dict["xiaomi"] = 4

print( dict )

// optional chaining
print(dict["google777"] ?? "Chave não encontrada")

// quantidade de elemntos no dicionário
print(dict.count)
// se o dicionário esta vazio
print(dict.isEmpty)

// para deletar uma chave do dicionário
//dict["xiaomi"] = nil
//print(dict)

// editar um valor
dict["xiaomi"] = 10
print(dict)

// dict.append("chave1",13)
// print(dict)

var studentDict : [String:String] = [:]

for  i in 0..<100{
  studentDict["\(i)"] = "student \(i)"
}

//print(studentDict)

for (key, value) in dict{
  print("chave \(key) - valor \(value)")
}

*/


/*
Set - conjuntos
*/

/*
// iniciei um Set vazio do tipo Inteiro
var newSet : Set<Int> = []

newSet.insert(10)
print(newSet)

newSet.insert(15)
print(newSet)

// para inserir um novo elemento
newSet.insert(10)
print(newSet)


// para ver todos os elementos
for s in newSet {
  print(s)
}

// para verificar se o elemento existe
print(newSet.contains(10))

// set não são acessados pr índices.


let isInserted = newSet.insert(10)
print("Já foi inserido? \(isInserted)")

*/

/*
func imprimirHelloWord1(){
  print("Hello word 1")
}

func imprimirHelloWord2(){
  print("Hello word 2")
}
*/

func imprimirHelloWord( numero : Int, texto: String ){
  print("Hello word \(numero) - texto igual a \(texto)")
  //print(numero)
}

let n :Int = 9

imprimirHelloWord( numero : n , texto: "iOS")
imprimirHelloWord( numero : 8, texto : "Android" )


func megaSenaGenerator( limit : Int, max: Int?) -> Set<Int>{

  var qtdRandomNumbers = limit

  var numbers : Set<Int> = []

  while qtdRandomNumbers > 0{

    // tento extrair o valor da variável max
    if let maxR = max {

      // gero um número randômico
      let random = Int.random( in: 1...maxR )
      // insiro ele no Set e verifico e ele foi inserido
      let isInserted = numbers.insert(random)

      // significa que ele foi inserido agora
      if isInserted.inserted == true{
        qtdRandomNumbers -= 1
        //print(numbers)
      }
    }
    else {
      qtdRandomNumbers = 0
    }

  }

  //print(numbers)

  return numbers
}

/*
  Opcionais : estrutura que permite verificar se uma variável possui valor nulo
  operador do opcional é (?)
*/

// let maxRandom : Int? = 90
var maxRandom : Int?

let setMegaSena : Set<Int> = megaSenaGenerator(limit : 8, max: maxRandom)
print(setMegaSena)


//var username : String? = "Fabrizio"
// var username : String?
//username = nil

//print(username.count)

// primeira forma de pegar o valor da estrutura opcional: forçar a pegar o valor que está dentro da estrutura opcional, eu uso o operador !
//print(username!)




// segunda forma de pegar a estrutura opcional é utilizando o if let - tente pegar o valor do opcional

// se tiver algum valor dentro de username, então devolva este valor para u
//if let u = username{
//  print(u)
//}else {
//  print("não consegui acessar a variável")
//}




// a terceira forma de acessar um valor dentro de um opcional é usar o guard let

//func simpleFunc() -> String{
//  guard let us = username else { return "valor do guard let" }

//  return us
//}
//print(simpleFunc())











class Mouse3{

  var cor : String
  var marca : String

  init(_ corConstrutor : String, _ marcaConstrutor: String){
    cor = corConstrutor
    marca = marcaConstrutor
  }
}

var m3: Mouse3 = Mouse3("Rosa",  "Dell")
print("Mouse 3 Cor \(m3.cor)")

class Mouse2{

  var cor : String
  var marca : String

  init(corConstrutor : String, marcaConstrutor: String){
    cor = corConstrutor
    marca = marcaConstrutor
  }
}

var m2: Mouse2 = Mouse2(corConstrutor : "Verde", marcaConstrutor: "Razer")
print("Mouse 2 Cor \(m2.cor)")


class Mouse{

  // init é o construtor da classe Mouse. Toda vez que um objeto da classe Mouse é criado, o método init é executado
  init(){
    print("Iniciando objeto da classe Mouse")
  }
  
  var cor : String = ""
  var marca : String = ""
  var modelo: String = ""
  var sensor: String = ""
  var tamanho: Int = 0

  func clicar() {
    print("Função clicar: \(sensor)" )
  }

  func imprimirModelo(){
    print("imprimirModelo: \(modelo)" )
  }

  func retornarTamanho() -> Int {
    return tamanho
  }

  func multiplarTamanho( fator : Int) -> Int{
    return (fator * tamanho)
  }

}
// variável que armazena os atributos de um objeto específico
var mouseAzul : Mouse = Mouse()

mouseAzul.cor = "Azul"
mouseAzul.marca = "Logitech"
mouseAzul.modelo = "sem fio"
mouseAzul.sensor = "sensor óptico de grau laser"
mouseAzul.tamanho = 10

mouseAzul.marca = "Logitech Brasil"

// chamar a função clicar do objeto mouseAzul
mouseAzul.clicar()
// chamar a função imprimirModelo do objeto mouseAzul
mouseAzul.imprimirModelo()
// chamar a função multiplarTamanho do objeto mouseAzul, que exige o parâmero fator
let novoTamanho : Int = mouseAzul.multiplarTamanho( fator : 3 )
print(novoTamanho)

let tamanho : Int = mouseAzul.retornarTamanho()

// copia dos dados de um obj para outro
//var mouseBranco : Mouse = mouseAzul
var mouseBranco : Mouse = Mouse()
mouseBranco.cor = mouseAzul.cor
// forma 1: usar a estrutura struct
// usar um mecanismo para copiar dados entre objetos

mouseBranco.cor = "Branco"

print("Mouse azul: cor -> \(mouseAzul.cor)")
print("Mouse branco: cor -> \(mouseBranco.cor)")

// print("Meu Obj -> \(mouseBranco)") 

class Quadrado{
    
    // construtor
    init(){
        
    }
    
    var lado : Int = 0
    //var ladoY : Int = 0
    var qtdLados: Int = 4
    
    func calcularArea() -> Int{
        let area : Int = lado * lado
        return area
    }
    
    func calcularPerimetro() -> Int {
        let p = 4 * lado
        return p
    }
}

// testar a classe instanciando um obj
var quad1 : Quadrado = Quadrado()
quad1.lado = 5
let areaQuadrado = quad1.calcularArea()
let perimetroQuadrado = quad1.calcularPerimetro()
print("A área do quadrado de lado \(quad1.lado) é igual a \(areaQuadrado)")
print("O perímetro do quadrado de lado \(quad1.lado) é igual a \(perimetroQuadrado)")

class Retangulo{
    var ladoX : Int = 0
    var ladoY : Int = 0
    var qtdLados : Int = 4
    
    func calcularArea() -> Int{
//        let area = (ladoX * ladoY)
//        return area
        return (ladoX * ladoY)
    }
    
    func calcularPerimetro() -> Int{
        return (2 * ladoY) + (2 * ladoX)
    }
}

var ret1 : Retangulo = Retangulo()
ret1.ladoX = 4
ret1.ladoY = 5

let areaRetangulo = ret1.calcularArea()

let perimetroRetangulo = ret1.calcularPerimetro()

print("A área do retângulo de lados \(ret1.ladoX), \(ret1.ladoY) é igual a \(areaRetangulo)")

print("O perímetro do retângulo de lados \(ret1.ladoX), \(ret1.ladoY) é igual a \(perimetroRetangulo)")


class Triangulo{
    
    var base : Int = 0
    var altura : Int = 0
    var ladoX : Int = 0
    var ladoY : Int = 0
    
    func calcularArea() -> Int {
        return (base * altura / 2)
    }
    
    func calcularPerimetro() -> Int{
        return (ladoY + ladoX + base)
    }
}

var tri1 : Triangulo = Triangulo()
tri1.base = 2
tri1.altura = 5
tri1.ladoX = 6
tri1.ladoY = 9

let areaTriangulo : Int = tri1.calcularArea()
let perimetroTriangulo : Int = tri1.calcularPerimetro()

print("A área do triângulo de lados \(tri1.base), \(tri1.ladoX), \(tri1.ladoY) é igual a \( areaTriangulo ) ")

print("O perímetro do triângulo de lados \(tri1.base), \(tri1.ladoX), \(tri1.ladoY) é igual a \( perimetroTriangulo ) ")



class Hexagono{
    var qtdLados = 6
    var altura  = 0
    var lado : Int = 0
    
    func calcularArea() -> Int {
        return ( 3 * lado * altura  )
    }
    
    func calcularPerimetro() -> Int{
        return (qtdLados  *  lado )
    }
}

var hex1 : Hexagono = Hexagono()
hex1.altura = 9
hex1.lado = 8


let areaHexagono : Int = hex1.calcularArea()
let perimetroHexagono : Int = hex1.calcularPerimetro()

print("A área do hexágono com altura \(hex1.altura) e base \(hex1.lado) é igual a \( areaHexagono ) ")

print("O perímetro do hexágono de lados com altura \(hex1.altura) e base \(hex1.lado) é igual a \( perimetroHexagono ) ")






