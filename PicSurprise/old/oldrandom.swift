//
// From SwiftUI by Example by Paul Hudson
// https://www.hackingwithswift.com/quick-start/swiftui
//
// You're welcome to use this code for any purpose,
// commercial or otherwise, with or without attribution.
//

import SwiftUI

//var oldNumber = 99


struct old1RandomImageView: View {
    
    
    //  @State private var number = Int(arc4random_uniform(1332))
    @State private var previousImageUrl: String?
    
    @State private var showDetails = false
    @State private var useOld = 0
    
    // var line = contentArray[Int(number)]
    
    
    @Environment(\.openURL)
    var openURL
    
    func currentImageUrl() -> String {
        var line = contentArray[Int(number)]
        let components = line.components(separatedBy: "::")
        return components[2]
    }
    
    func greeting() {
        
        print("Hello, Worldd! \(number)")
        
        var number = Int(arc4random_uniform(1332))
        print("Hello, Worlde! \(number)")
    }
    
    func mjrnew () {
        
        useOld = 0
        var number = Int(arc4random_uniform(1332))
    }
    
    func useOldNumber () -> some View {
        useOld = 1
        Text("inside useoldnumber")
        print("inside useoldnumber \(useOld)")
        return Text("")
    }
    
    func newnumber() -> some View {
        Text("in funct.  number \(number) oldnumber \(oldNumber) useold \(useOld)")
            .foregroundColor(Color.white)
        if (useOld != 0){
            // number = Int(arc4random_uniform(1332))
            print("inside newnumber \(useOld)")
            print("inside newnumber number \(number)")
            
            number = oldNumber
            print("inside newnumber number \(number)")
            
            useOld = 0
        }
        else {
            
            print("in in funct.  number \(number) oldnumber \(oldNumber) useold \(useOld)")
            // .foregroundColor(Color.white)
            //number = oldNumber
            number = Int(arc4random_uniform(1332))
            //oldNumber = number
            //var useOld = 1
            print("after set in in funct.  number \(number) oldnumber \(oldNumber) useold \(useOld)")
            
        }
        
        
        //var line = contentArray[Int(number)]
        return Text("")
        // return Text("newnumber ran")
        
    }
    
    func showDetails2 () {
        //    var number = oldNumber
        //   let imgUrl = oldImgUrl
        
        //  var line = contentArray[Int(number)]
        Text(" if  b4 calls number \(number) oldnumber \(oldNumber) useold \(useOld)")
            .foregroundColor(Color.white)
        print(" in showdetails calls number \(number) oldnumber \(oldNumber) useold \(useOld)")
        
        // useOldNumber()
        // useOld = 1
        // newnumber()
        number = oldNumber
        Text(" if number \(number) oldnumber \(oldNumber) useold \(useOld)")
            .foregroundColor(Color.white)
    }
    /*  else {
     //   var number = oldNumber
     //    let imgUrl = oldImgUrl
     Text(" else  b4 calls number \(number) oldnumber \(oldNumber) useold \(useOld)")
     .foregroundColor(Color.white)
     //useOldNumber()
     var useOld = 1
     newnumber()
     Text(" else number \(number) oldnumber \(oldNumber) useold \(useOld)")
     .foregroundColor(Color.white)
     
     
     }*/
    
    var body: some View {
        
        VStack {
            Text("number \(number) oldnumber \(oldNumber) useold \(useOld)")
                .foregroundColor(Color.white)
            
            
            var line = contentArray[Int(number)]
            let components = line.components(separatedBy: "::")
            //  guard components.count == 7 else {
            //     print("Invalid line format")
            //       return
            //   }
            
            let imgUrl = components[2]
            //      let oldImgUrl = imgUrl
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
                
                
                /*  Text("\nRandom image fromm All the Pages")
                 .font(.custom("helvetica", fixedSize: 22))
                 .foregroundColor(Color.white)
                 
                 
                 Text("\(postDate) \n").italic()
                 .foregroundColor(Color.white)
                 Text("number \(number) oldnumber \(oldNumber) useold \(useOld)")
                 .foregroundColor(Color.white)*/
                
                
                
                /*     Text("\(postTitle)").font(.headline)
                 .foregroundStyle(
                 LinearGradient(
                 colors: [.yellow, .green, .blue],
                 startPoint: .leading,
                 endPoint: .trailing
                 ))
                 
                 }*/
                
                AsyncImage(url: URL(string: imgUrl))
                { phase in switch phase { case .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all).frame(minWidth: 300.0, idealWidth: 500.0, minHeight:300.0, idealHeight: 500.0)
                
                //  { phase in switch phase { case .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all).frame(minWidth: 500.0, idealWidth: 800.0, minHeight:500.0, idealHeight: 800.0)
                
                //{ phase in switch phase { case .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all)
                //   { phase in switch phase { case .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all).frame(width: 800.0, height: 800.0).clipShape(Circle()).border(.blue)
                
                //{ phase in switch phase { cjase .failure: Image(systemName: "photo") .font(.largeTitle) case .success(let image): image .resizable() .scaledToFit() default: ProgressView() } }.padding(.all).frame(width: 500.0, height: 500.0).clipShape(RoundedRectangle(cornerRadius: 50))
                /*        Text("\(caption)").bold()
                 .foregroundStyle(
                 LinearGradient(
                 colors: [.yellow, .orange, .red],
                 startPoint: .leading,
                 endPoint: .trailing
                 ))*/
                //   Group {
                //     Text("")
                //}
                
                //          Link("View post on All the Pages", destination: URL(string: postUrl)!)
                
                Group {
                    Text("")
                    // Text("")
                    Text("")
                }
                
                
                // Button("Greeting", action: greeting)
                //Button("BACK", action: showDetails2)
                // Button("NEW", action: mjrnew)
                
                
                
                /*       AsyncImage(url: URL(string: previousImageUrl ?? ""))
                 { phase in
                 switch phase {
                 case .failure:
                 Image(systemName: "photo")
                 .font(.largeTitle)
                 case .success(let image):
                 image
                 .resizable()
                 .scaledToFit()
                 default:
                 ProgressView()
                 }
                 }
                 .padding(.all)*/
                
                
                
                Button("Neww Picture") {
                    previousImageUrl = currentImageUrl()
                    newnumber()
                    showDetails.toggle()
                }
                .padding()
                .background(Color(red: 0.1, green: 0, blue: 0.3))
                .clipShape(Capsule())
                
                
                
                
                
                /*           Button("Back") {
                 showDetails.toggle()
                 }
                 .padding()
                 .background(Color(red: 0.1, green: 0, blue: 0.3))
                 .clipShape(Capsule())
                 
                 if showDetails {
                 //    var number = oldNumber
                 //   let imgUrl = oldImgUrl
                 
                 //  var line = contentArray[Int(number)]
                 Text(" if  b4 calls number \(number) oldnumber \(oldNumber) useold \(useOld)")
                 .foregroundColor(Color.white)
                 // useOldNumber()
                 var useOld = 1
                 newnumber()
                 Text(" if number \(number) oldnumber \(oldNumber) useold \(useOld)")
                 .foregroundColor(Color.white)
                 
                 
                 }
                 else {
                 //   var number = oldNumber
                 //    let imgUrl = oldImgUrl
                 Text(" else  b4 calls number \(number) oldnumber \(oldNumber) useold \(useOld)")
                 .foregroundColor(Color.white)
                 //useOldNumber()
                 var useOld = 1
                 newnumber()
                 Text(" else number \(number) oldnumber \(oldNumber) useold \(useOld)")
                 .foregroundColor(Color.white)
                 
                 
                 }
                 */
                Button("New") {
                    showDetails.toggle()
                    //newnumber()
                }
                .padding()
                .background(Color(red: 0.1, green: 0, blue: 0.3))
                .clipShape(Capsule())
                
                if showDetails {
                    //    var number = oldNumber
                    //   let imgUrl = oldImgUrl
                    
                    //  var line = contentArray[Int(number)]
                    //  useOldNumber()
                    // var useOld = 0
                    newnumber()
                    Text(" if number \(number) oldnumber \(oldNumber) useold \(useOld)")
                        .foregroundColor(Color.yellow)
                    
                    
                }
                else {
                    //   var number = oldNumber
                    //    let imgUrl = oldImgUrl
                    
                    // useOldNumber()
                    // var useOld = 0
                    newnumber()
                    Text(" elsee number \(number) oldnumber \(oldNumber) useold \(useOld)")
                        .foregroundColor(Color.red)
                    
                    
                }
                
                
                
            }
            
            
        /*    .frame(minWidth: 500.0, idealWidth: 800.0,minHeight:800.0, idealHeight: 1024.0)
            .background(Color.black)*/
            
        }
        
    }
}
        

struct old1RandomImageView_Previews: PreviewProvider {
    static var previews: some View {
        old1RandomImageView()
    }
    
}
