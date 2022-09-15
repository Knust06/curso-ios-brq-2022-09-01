import Foundation

func sum(x: Int, y : Int) -> Int{
    return (x + y)
}

func divide(x: Int, y : Int) -> Int{
    return (x / y)
}
print("Sla")
func calc(a: Int, b: Int, op: (Int, Int) -> Int ){
    let result = op(a,b)
    print("O resultado é \(result)")
}

// calc(a: 3, b: 6, op: sum(x:a,y:b))
calc(a: 3, b: 6, op: { a,b in
    
    // tudo depois do in é corpo da função
    (a-b)
} )


class AlunoCoreData{
    var Nome : String
    var sobrenome: String
    var Idade : Int
    
    init(nome: String, sobrenome : String, idade : Int) {
        self.nome = nome
        self.idade = idade
        self.sobrenome = sobrenome
        
    }
    
}
var alunos : [AlunoCoreData] = []
let a1 : AlunoCoredata = AlunoCoreData(nome: "Fabrizio", sobrenome: "Borelli", idade : 34)
let a2 : AlunoCoredata = AlunoCoreData(nome: "Gabriela", sobrenome: "Biondi", idade : 32)
let a3 : AlunoCoredata = AlunoCoreData(nome: "Lucas", sobrenome: "Knust", idade : 20)

alunos.append(a1)
alunos.append(a2)
alunos.append(a3)

alunos
