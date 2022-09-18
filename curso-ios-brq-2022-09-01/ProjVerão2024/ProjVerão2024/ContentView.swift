//
//  ContentView.swift
//  ProjVerão2024
//
//  Created by user226741 on 9/15/22.
//

import SwiftUI

struct ContentView: View {
    //@Environment -> serve para instanciar uma variável que está global em nossa aplicação EX: Gerenciador de Objetos do contexto do banco de dados
    @Environment(\.managedObjectContext) var managedObjectContext
    
    //FetchRequest é um mecanismo que permite consultar o objeto que estão armazenado no CoreData inclusive com ordenação
    
    //SortDescriptor serve para descrever como você quer ordenar os dados
    @FetchRequest (sortDescriptors: [SortDescriptor(\.date, order : .reverse)]) var food: FetchedResults<Food>
    
    @State var isAddView: Bool = false
    
   
    var body: some View {

           NavigationView{
                VStack{
                   
                   Text("\(Int( getTotalCalories() ) ) Calorias Totais")
                       .foregroundColor(.gray)
                       .padding()
                   
                   List{

                       ForEach(food) { food in
                        NavigationLink(destination: EditFoodView(food: food)) {
                           HStack {
                                VStack {
                                    Text(food.name!)
                                        
                                    
                                    Text("\(Int(food.calories))") 
                                }
                                
                                Text(calcTimeSince(date: food.date!))
                                    
                       }

                       Text("\(Int( getTotalCalories() ) ) Calorias Totais")
                   }// list
                   
                   .toolbar{
                       ToolbarItem(placement: .navigationBarTrailing){
                           Button{
                               isAddView = true
                           } label: {
                               Label("Add Label", systemImage: "plus.circle")
                           }
                       }
                          ToolbarItem(placement: .navigationBarLeading){
                            EditButton()
                          }
                   }// toolbar
                   .sheet(isPresented: $isAddView){
                       AddFoodView()
                   }// sheet
               }// Vstack

           
           }// NavigationView
           
       }// body
       
       func getTotalCalories() -> Double{
             var total: Double = 0
             for item in food {
                 total += item.calories
             }
             print("Calorias totais: \(total)")
             return total
             
                
            
           return 0.0
       }
   }

       struct ContentView_Previews: PreviewProvider {
           static var previews: some View {
               ContentView()
           }
       }

