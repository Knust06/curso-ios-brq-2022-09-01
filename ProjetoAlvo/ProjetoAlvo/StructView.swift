//
//  StructView.swift
//  ProjetoAlvo
//
//  Created by Fabrizio  Borelli on 12/09/22.
//

import SwiftUI

struct StructView: View {
    
    var text : String
    
    var body: some View {
        Text(text)
    }
}

struct AcerteNumText : View {
    
    var color : Color
    var text : String
    
    var body : some View{
        Text(text)
                .opacity(0.5)
                .foregroundColor(color)
    }
}



//struct StructView_Previews: PreviewProvider {
//    static var previews: some View {
//        StructView(text: "Texto para visualizar")
//    }
//}
