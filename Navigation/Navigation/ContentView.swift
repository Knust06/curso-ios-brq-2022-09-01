//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                CircleView(color: .red, text: "1")
                    
                
                
                
                
                NavigationLink(destination: BlueCircleView(),
                    label: {
                    NavigationText(color: .blue, text: "Próxima página")
                })
                
                HomeView()
                
            }
            
        }
        
                
        
    }
}

struct HomeView : View{
    
    var body: some View{
        
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        HStack{
            Button("Login" , action: {})
                .frame(width: 90, height: 40)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            Button( action: {}, label: {
                Label("Esqueci Minha Senha", systemImage: "doc.circle")
            })
                .frame(width: 220, height: 40)
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(20)
                
        }
        .padding()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
