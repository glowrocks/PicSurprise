import SwiftUI
var number = Int(arc4random_uniform(1332))
var oldNumber = Int(arc4random_uniform(1332))
var useOld = 0
//var number = 0


struct ContentView: View {
   
    @State private var number = 0

    var body: some View {

            
         TabView {
            backRandomImageView()
                .tabItem {
                    Label("Home", systemImage: "camera.badge.ellipsis")

                }
              .background(Color.black)

             
 //               .onAppear {
//                                Text("ContentView appeared!")
//                                    number = Int(arc4random_uniform(10))
                                    //Text("home appear \(number)")
//                                }

            HomeView()
                .tabItem {
                    Label("About", systemImage: "person")
                }
                .background(Color.black)

            
        }
//         .onAppear {
//                                        Text("ContentView appeared!")
//                            number = Int(arc4random_uniform(10))

                   //                 }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
