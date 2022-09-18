//
//  SecondView.swift
//  ProjetoAlvo
//
//  Created by user226741 on 9/12/22.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var isShowSecondScreen : Bool
    var body: some View {
        
            Text("Hello, World ! Second Screen")
            Button("Fechar Tela"){
                isShowSecondScreen = false
            }
            
            
        }
    
            
        }
    



