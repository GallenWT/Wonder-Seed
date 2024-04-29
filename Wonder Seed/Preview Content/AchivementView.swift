//
//  AchivementView.swift
//  Wonder Seed
//
//  Created by Gallen W T on 28/04/24.
//

import SwiftUI

struct AchivementView: View {
    @State var isNavigate = false
    
    @Environment(\.dismiss)  var dismiss
    var body: some View {
        NavigationStack {
            ZStack(alignment:.topLeading) {
                Button(action: {
                    dismiss()
                    print("Success")
                }) {
                    Image(systemName: "chevron.backward.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.P_700)
                        .frame(width: 30, height: 30)
                }
                VStack{
                    Image("achievement").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .padding(.bottom, 50)
                    HStack{
                        Button {
                            isNavigate = true
                        } label: {
                            Image("apple").resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                            
                        }
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    } .padding(10.0)
                    
                    HStack{
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    } .padding(10.0)
                    
                    HStack{
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    } .padding(10.0)
                    
                    HStack{
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    } .padding(10.0)
                    
                    HStack{
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image("randomSeed").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                    } .padding(10.0)
                    
                    
                }.foregroundColor(.white)
                .navigationDestination(isPresented: $isNavigate) {
                    plantingView()
                }
            }
            
        }
        
    }
}

#Preview {
    AchivementView()
}
