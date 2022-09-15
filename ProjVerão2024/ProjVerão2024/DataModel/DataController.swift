//
//  DataController.swift
//  ProjVerão2024
//
//  Created by user226741 on 9/15/22.
//

import Foundation
import CoreData
// Data controller vai ser uma classe que vai agrupar as funções
//e vai permitir manipular os dados

//save() - permite salvar os dados no banco de dados do CoreData

//update() - permite alterar os dados no banco de dados do CoreData

// Um contexto no Core Data está relacionado a quais entidades o mesmo pode gerenciar : fazer o crud das mesmas (CRUD: create, read, update, delete)

// try catch é um mecanismo que permite  'tentar fazer algo' com possibilidade de
// tratamos este erro sem que o aplicativo pare


class DataController {
    
    func save(context: NSManagedObjectContext){
        do{ try
            context.save()}
        catch{
        let error = error as NSError
            print("Erro ao salvar os dados no contexto")
        }
        // try - catch
    }

    
    func update(){
        
    }
    
    /*  UUID, name, date, calories */
    
    func addFood(name: String, calories: Double, context: NSManagedObjectContext){
        let food = Food(context: context)
        
        food.name = name
        food.calories = calories
        food.id = UUID()
        food.date = Date()
        
        // TODO : Criar função salvar  os dados no context
        
    }
    
        
    func editFood(){
        
    }
    
}


