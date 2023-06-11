//
//  test.swift
//  PicSurprise
//
//  Created by Mike Rodriquez on 6/10/23.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        ZStack {
            Image("BDFA3C80-4077-4A17-94E2-3410FE7EA2F6_1_102_o") // 1
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
            VStack {
                Text("PicSurprise!\n") .font(.custom("chalkduster", fixedSize: 55))
            
                .fontWeight(.bold)
                .foregroundStyle(
                        LinearGradient(
                            colors: [.red, .blue, .green, .yellow],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        )
            
            
            
           //     .foregroundColor(.blue)

            Text("Random Images from my blog, \n   All the Pages (are my days)")
                    .background(.white)
                    .foregroundColor(.black)
                    .font(.largeTitle)
Text("text and photos © by Mike Rodriquez, 1974-2023")
                    .foregroundColor(.blue)
                    .background(.white)
                    .font(.largeTitle)

            
        }
        .padding()
        }
        
    }
}


struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
