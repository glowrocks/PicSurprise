// RandomImageView
// by Mike Rodriquez

import SwiftUI


struct RandomImageView: View {
    @State private var showDetails = false


   var line = contentArray[Int(number)]
    
    @Environment(\.openURL)
    var openURL
    
    
    func newnumber() -> some View {
        Text("in funct.  number \(number) oldnumber \(oldNumber) useold \(useOld)")
            .foregroundColor(Color.white)
        if (useOld != 0){

            number = oldNumber
           useOld = 0
        }
        else {
 
            number = Int(arc4random_uniform(1332))

        }
    
            return Text("")
        
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
                    .foregroundColor(Color.white)
                
                
                Text("\(postDate) \n").italic()
                    .foregroundColor(Color.white)
                   
                
                Text("\(postTitle)").font(.headline)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.yellow, .green, .blue],
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                
            }
            
            AsyncImage(url: URL(string: imgUrl))
            { phase in switch phase { case .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all).frame(minWidth: 500.0, idealWidth: 800.0, minHeight:500.0, idealHeight: 800.0)
            
     
            Text("\(caption)").bold()
                .foregroundStyle(
                    LinearGradient(
                        colors: [.yellow, .orange, .red],
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
            //   Group {
            //     Text("")
            //}
            
                  Link("View post on All the Pages", destination: URL(string: postUrl)!)
            
            Group {
                Text("")
                // Text("")
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
                    .foregroundColor(Color.yellow)
                
                
            }
            else {
                newnumber()
                    .foregroundColor(Color.red)
                
                
            }
            
        }
        
        
        .frame(minWidth: 500.0, idealWidth: 800.0,minHeight:800.0, idealHeight: 1024.0)
        .background(Color.black)

    }
    
}

      struct RandomImageView_Previews: PreviewProvider {
    static var previews: some View {
        RandomImageView()
    }
    
}
