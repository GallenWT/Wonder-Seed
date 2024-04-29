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
        ZStack(){
            Rectangle()
                .foregroundColor(Color("S1-100"))
                .frame(height: .infinity)

            
            VStack(alignment: .leading){
                Button(action: {
                    dismiss()
                    print("Success")
                }) {
                    Image(systemName: "chevron.backward.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("P-700"))
                        .frame(width: 30, height: 30)
                }.padding(EdgeInsets(top: 78, leading: 27, bottom: 0, trailing: 0))
                
                Spacer()
                Rectangle()
                    .foregroundColor(Color("P-600"))
                    .frame(height: 255, alignment: .bottom)
            }
            
            
            AnimatedImage(imageNames: ["bibitStage1", "bibitStage2", "bibitStage3"])/*.resizable()*/
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 86)
                .position(x: 190, y:600)
            
            .navigationBarBackButtonHidden()
            
        }.ignoresSafeArea()
    }
}

struct AnimatedImage: View {
    @State private var image: Image = Image("")
    var imageNames: [String]

    var body: some View {
        Group {
            image
                .resizable()
                .scaledToFit()
        }.onAppear(perform: {
            self.animate()
        })
        .transition(.opacity)
    }
    
    private func animate() {
        var imageIndex: Int = 0
  
        Timer.scheduledTimer(withTimeInterval: 1.4, repeats: true) { timer in
            if imageIndex < self.imageNames.count {
                self.image = Image(self.imageNames[imageIndex])
                imageIndex += 1
            }
            else {
                timer.invalidate()
            }
        }
    }
}

#Preview {
        plantingView()
//    AnimatedImage(imageNames: ["bibitStage1", "bibitStage2", "bibitStage3", "bibitStage4", "bibitStage5", "bibitStage6", "bibitStage7"])
}
