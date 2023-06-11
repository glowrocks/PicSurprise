//
// From SwiftUI by Example by Paul Hudson
// https://www.hackingwithswift.com/quick-start/swiftui
//
// You're welcome to use this code for any purpose,
// commercial or otherwise, with or without attribution.
//

import SwiftUI

struct RandomImageView: View {
    var line = contentArray[Int(number)]
    @State private var showDetails = false
    
    @Environment(\.openURL)
    var openURL

    
    func newnumber() -> some View {
        
     number = Int(arc4random_uniform(1332))
            //var line = contentArray[Int(number)]
        return Text("")
       // return Text("newnumber ran")
        
    }

    var body: some View {
        
        VStack {
        
            var line = contentArray[Int(number)]
            let components = line.components(separatedBy: "::")
            //  guard components.count == 7 else {
            //     print("Invalid line format")
            //       return
            //   }
            
            let imgUrl = components[2]
            let caption = components[3]
            let postTitle = components[4]
            let postUrl = components[5]
            let postDate = components[6]
            
            Group {
                
                Text("PicSurprise!") .font(.custom("chalkduster", fixedSize: 45))
                
                    .fontWeight(.bold)
                    .foregroundStyle(
                            LinearGradient(
                                colors: [.red, .blue, .green, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                            )
                
                Text("\nRandom image from All the Pages")
                    .font(.custom("helvetica", fixedSize: 22))
                
                Text("\(postDate) \n").italic()
                
                Text("\(postTitle)").font(.headline)
                    .foregroundStyle(
                            LinearGradient(
                                colors: [.yellow, .green, .blue],
                                startPoint: .leading,
                                endPoint: .trailing
                            ))
                   
            }
            
            AsyncImage(url: URL(string: imgUrl))
            { phase in switch phase { case .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all)
            //{ phase in switch phase { case .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all).frame(width: 800.0, height: 800.0).clipShape(Circle()).border(.blue)
            //{ phase in switch phase { cjase .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all).frame(width: 500.0, height: 500.0).clipShape(RoundedRectangle(cornerRadius: 50))
            Text("\(caption)").bold()
                .foregroundStyle(
                        LinearGradient(
                            colors: [.yellow, .orange, .red],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
            Group {
                Text("")
            }
            
            Link("View post on All the Pages", destination: URL(string: postUrl)!)
            
            Group {
                Text("")
                Text("")
                Text("")
            }

            Button("New Picture") {
                showDetails.toggle()
            }
            .padding()
            .background(Color(red: 0.1, green: 0, blue: 0.3))
            .clipShape(Capsule())

            if showDetails {
                newnumber()
                var line = contentArray[Int(number)]

            }
                else {
                    newnumber()
                }
        }
        
        
        
        
    }
    
}
        

struct RandomImageView_Previews: PreviewProvider {
    static var previews: some View {
        RandomImageView()
    }
}
