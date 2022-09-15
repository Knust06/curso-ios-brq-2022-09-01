//
//  StructViews.swift
//  Navigation
//
//  Created by user226741 on 9/14/22.
//

import SwiftUI

struct StructViews: View {
    var body: some View {
        Text("Hello World 2")
    }
}

struct CircleView : View {
    var color : Color
    var text : String
    
    var body : some View{
        ZStack{
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(color)
            Text(text)
                .foregroundColor(.white)
                .font(.system(size: 70,weight: .bold))
        }
        
    }
}


struct NavigationText : View {
    
    var color : Color
    var text: String
    
    var body: some View{
        Text(text)
            .frame(width: 200, height: 50)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(30)
    }
}

struct StructViews_Previews: PreviewProvider {
    static var previews: some View {
        StructViews()
    }
}
