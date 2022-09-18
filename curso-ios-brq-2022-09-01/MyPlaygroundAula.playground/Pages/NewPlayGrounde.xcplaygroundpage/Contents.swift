

import Foundation

class Pessoa{
    internal var nome : String = ""
    
    func imprimirNome(){
        print("O nome é \(nome)")
    }
        
    
}


class Aluno : Pessoa {
    
    private var matricula : String = ""
    
    func imprimirMatricula(){
        print("A Matrícula é \(matricula)")
    }
    override func imprimirNome(){
        print("O nome do aluno é \(nome)")
        }
    func alterarMatricula(_ novaMatrícula : String){
        matricula = novaMatrícula
    }
    //set possui a responsabilidade de alterar uma variável
    func setMatricula(_ novaMatricula : String){
        matricula = novaMatricula
    }

    func getMatricula() -> String {
        return matricula
    }
}

class Professor : Pessoa{
    
    var salario : Double = 0.0
    
}

var al : Aluno = Aluno()
al.alterarMatricula("MAT1")
//al.matricula = "MAT 1"
al.nome = "NOME 1"
al.imprimirNome()
al.imprimirMatricula()

var prof : Professor = Professor()
prof.nome = "NOME2"
prof.imprimirNome()


//Aplicar o conceito de herança nas formas geométricas


//print(al.nome, al.matricula)
