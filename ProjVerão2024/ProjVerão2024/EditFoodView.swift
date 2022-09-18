import SwiftUI


struct EditFoodView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    
    @FetchRequest (sortDescriptors: [SortDescriptor(\.date, order : .reverse)]) var food: FetchedResults<Food>
    
    @State var name = ""
    @State var calories : Double = 0.0
    
    var body: some View{
        NavigationView{
            VStack{
                TextField("Nome", text: $name)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Calorias", value: $calories, formatter: NumberFormatter())
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Salvar"){
                    let newFood = Food(context: managedObjContext)
                    newFood.name = name
                    newFood.calories = calories
                    newFood.date = Date()
                    
                    do{
                        try managedObjContext.save()
                    }catch{
                        print(error.localizedDescription)
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            
            
            
            
        }
        
        
    }
}
    
