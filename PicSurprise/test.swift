//
//  test.swift
//  PicSurprise
//
//  Created by Mike Rodriquez on 6/10/23.
//
/*
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
    
 /*   Group {
        Text("PicSurprise!")
            .font(.custom("chalkduster", fixedSize: 45))
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
        
        Text("\(postDate) \n")
            .italic()
            .foregroundColor(Color.white)
        
        Text("\(postTitle)")
            .font(.headline)
            .foregroundStyle(
                LinearGradient(
                    colors: [.yellow, .green, .blue],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
    }
}
  
  Text("\(caption)")
      .bold()
      .foregroundStyle(
          LinearGradient(
              colors: [.yellow, .orange, .red],
              startPoint: .leading,
              endPoint: .trailing
          )
      )
  
  Link("View post on All the Pages", destination: URL(string: postUrl)!)
  
  Button("New Picture") {
      imageHistory.append(number)
      newNumber()
  }
  .padding()
  .background(Color(red: 0.1, green: 0, blue: 0.3))
  .clipShape(Capsule())
  .disabled(isNextButtonEnabled)
  */




struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}*/
/*
 import SwiftUI

 struct backRandomImageView: View {
     @State private var showDetails = false
     @State private var number = Int(arc4random_uniform(1332))
     @State private var imageHistory: [Int] = []
     @State private var forwardImageHistory: [Int] = []
     @State private var previousImageHistory: [Int] = []
     @State private var isNextButtonEnabled = false
     @State private var isPrevButtonEnabled = false

     @Environment(\.openURL)
     var openURL
     
     func newNumber() {
         imageHistory.append(number)
         number = Int(arc4random_uniform(1332))
         forwardImageHistory.removeAll()
         isNextButtonEnabled = false
         isPrevButtonEnabled = !imageHistory.isEmpty
     }
     
     func previousImage() {
           if let previousNumber = imageHistory.popLast() {
               forwardImageHistory.append(number)
               showDetails = true
               number = previousNumber
           }
       }
       
       func nextImage() {
           if let nextNumber = forwardImageHistory.popLast() {
               imageHistory.append(number)
               showDetails = true
               number = nextNumber
           }
       }
     
     var body: some View {
         VStack {
             let line = contentArray[Int(number)]
             let components = line.components(separatedBy: "::")
             
             let imgUrl = components[2]
             let caption = components[3]
             let postTitle = components[4]
             let postUrl = components[5]
             let postDate = components[6]
             
             Group {
                 Text("PicSurprise!")
                     .font(.custom("chalkduster", fixedSize: 45))
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
                 
                 Text("\(postDate) \n")
                     .italic()
                     .foregroundColor(Color.white)
                 
                 Text("\(postTitle)")
                     .font(.headline)
                     .foregroundStyle(
                         LinearGradient(
                             colors: [.yellow, .green, .blue],
                             startPoint: .leading,
                             endPoint: .trailing
                         )
                     )
             }
             
             AsyncImage(url: URL(string: imgUrl)) { phase in
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
             .padding(.all)
             .frame(minWidth: 500.0, idealWidth: 800.0, minHeight: 500.0, idealHeight: 800.0)
             
             Text("\(caption)")
                 .bold()
                 .foregroundStyle(
                     LinearGradient(
                         colors: [.yellow, .orange, .red],
                         startPoint: .leading,
                         endPoint: .trailing
                     )
                 )
             
             Link("View post on All the Pages", destination: URL(string: postUrl)!)
             
             Button("New Picture") {
                 imageHistory.append(number)
                 newNumber()
             }
             .padding()
             .background(Color(red: 0.1, green: 0, blue: 0.3))
             .clipShape(Capsule())
             .disabled(isNextButtonEnabled)
             
             HStack {
                 Button("Previous Picture") {
                     previousImage()
                 }
                 .padding()
                 .background(Color(red: 0.3, green: 0, blue: 0.1))
                 .clipShape(Capsule())
                 .disabled(!isPrevButtonEnabled)
                 
                 Button("Next Picture") {
                     nextImage()
                 }
                 .padding()
                 .background(Color(red: 0.1, green: 0.3, blue: 0.1))
                 .clipShape(Capsule())
                 .disabled(!isNextButtonEnabled)
             }
         }
         .frame(minWidth: 500.0, idealWidth: 800.0, minHeight: 800.0, idealHeight: 1024.0)
         .background(Color.black)
     }
 }

 struct backRandomImageView_Previews: PreviewProvider {
     static var previews: some View {
         backRandomImageView()
     }
 }
*/
