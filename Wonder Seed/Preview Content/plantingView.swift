//
//  plantingView.swift
//  Wonder Seed
//
//  Created by Gallen W T on 29/04/24.
//

import SwiftUI

struct plantingView: View {
    var body: some View {
        
        @Environment(\.dismiss)  var dismiss
        ZStack{
           
            
            VStack(alignment: .leading){
                Button(action: {
                    dismiss()
                    print("Success")
                }) {
                    Image(systemName: "chevron.backward.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.P_700)
                        .frame(width: 30, height: 30)
                }.padding(27)
                Rectangle()
                    .foregroundColor(.white)
                Rectangle()
                    .foregroundColor(Color("grassColor"))
                    .ignoresSafeArea()
                    .frame(height: 255)
                
            }
            Image("bibit").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 170, height: 250
                )
                .position(x: 190, y:500)
//                .position(x: UIScreen.main.bounds.width
//                          , y: UIScreen.main.bounds.height
//                )
            
            .navigationBarBackButtonHidden()
            
        }
    }
}

#Preview {
    plantingView()
}
