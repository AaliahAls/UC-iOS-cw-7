//
//  DetailsView.swift
//  cw7
//
//  Created by khaled falah alazemi  on 21/09/2022.
//

import SwiftUI
//struct MovieInfo2 : Identifiable {
//    let id = UUID()
//    let name : String
//    let imageName : String
//}

struct DetailsView: View {
    var Movie = MovieInfo(name : "aladdin", imageName: "aladdin", cast: [""])
    var body: some View {
        ZStack{
            Color.black
            Image(Movie.name)
                .resizable()
              //  .scaledToFill()
                .frame(width: 390,height: 900)
                .blur(radius: 50)
                .opacity(0.9)
            VStack (spacing: 50){
                   Image(Movie.imageName)
                       .resizable()
                      // .scaledToFit()
                       .frame(width: 250, height: 250, alignment: .center)
                       .clipShape(Circle())
                       .padding(5)
                       .background(.white)
                       .clipShape(Circle())
               Text(Movie.name)
                   .font(.title)
                   .fontWeight(.bold)
                   .foregroundColor(.white)
               
                  // Spacer()
               
                ScrollView(.horizontal){
                    HStack{
                        ForEach(Movie.cast, id: \.self){ cast in
                                VStack{
                                    Image(cast)
                                        .resizable()
                                    //    .scaledToFit()
                                        .clipShape(Rectangle())
                                        .frame(width: 80, height: 80)
                                    Text(cast)
                                        .foregroundColor(.white)
                                        .font(.title3)
                                    
                                } .padding(10)
                        }
                    }
                    }
               }
               
            
        }
        .ignoresSafeArea()
            
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(Movie: MovieInfo(name: "aladdin", imageName: "aladdin", cast: [""]))
    }
}
