//
//  BlueCircleView.swift
//  Navigation
//
//  Created by user226741 on 9/13/22.
//

import SwiftUI

struct BlueCircleView: View {
    var body: some View {
        VStack{
            
                
                CircleView(color: .blue, text: "2")
             
                
            
        
            NavigationLink(destination: YellowCircleView(),
        label: {
                NavigationText(color: .blue, text: "Próxima página")
    })
            .padding()
        }
        
              
    }
}

struct BlueCircleView_Previews: PreviewProvider {
    static var previews: some View {
        BlueCircleView()
    }
}
