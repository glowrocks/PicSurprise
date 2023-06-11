import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            

            Text("PicSurprise!") .font(.custom("chalkduster", fixedSize: 45))
            
                .fontWeight(.bold)
                .foregroundStyle(
                        LinearGradient(
                            colors: [.red, .blue, .green, .yellow],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        )
            
            
            
           //     .foregroundColor(.blue)

            Text("\nRandom Images from my blog, \n   All the Pages (are my days)")
        
               // .padding()
           // Image("475695CA-7D1A-4FDC-ABBE-D8C3CC779E60_1_102_o")
            Image("BDFA3C80-4077-4A17-94E2-3410FE7EA2F6_1_102_o")
           // Image("picsurprise.jpeg")
                .resizable()
               .scaledToFit()
            
            
            Text("text & photos © 1974-2023 by Mike Rodriquez")
            
        }
        .padding()
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct FontNames {
    static var americanTypwriter = "American Typewriter"
    static var arial = "Arial"
    static var baskerville = "Baskerville"
    static var chalkduster = "Chalkduster"
    static var courier = "Courier"
    static var georgia = "Georgia"
    static var helvetica = "Helvetica"
    static var palatino = "Palatino"
    static var zapfino = "Zapfino"
}
