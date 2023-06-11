import SwiftUI

var number = Int(arc4random_uniform(10))

struct ContentView: View {
   

    var body: some View {
        
    

            
            
         TabView {
            RandomImageView()
                .tabItem {
                    Label("Home", systemImage: "camera.badge.ellipsis")

                }
             
                .onAppear {
                                    Text("ContentView appeared!")
                                    number = Int(arc4random_uniform(10))
                                    //Text("home appear \(number)")
                                }

            HomeView()
                .tabItem {
                    Label("About", systemImage: "person")
                }
            
        }
         .onAppear {
                                        Text("ContentView appeared!")
                            number = Int(arc4random_uniform(10))

                                    }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
