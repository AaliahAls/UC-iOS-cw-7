//
//  ContentView.swift
//  cw7
//
//  Created by khaled falah alazemi  on 21/09/2022.
//

import SwiftUI
struct MovieInfo : Identifiable {
    let id = UUID()
    let name : String
    let imageName : String
    let cast : Array<String>
}

struct ContentView: View {
    var films = [
        MovieInfo(name: "aladdin",
                  imageName: "aladdin",
                  cast: ["will Smith","Mena Massoud", "Naomi Scott", "Marwan", "Nasim Pedrad", "Numan Acar"]),
        MovieInfo(name: "shreek",
                  imageName: "shreek",
                  cast: ["Mike Myers", "Eddie Murphy","Chris Miller", "John Lithgow"]),
        MovieInfo(name: "encato",
                  imageName: "encato",
                  cast: ["Stephanie Beatriz", "Wilmer Valderrama", "John Leguizamo"])
    ]
    var body: some View {
          NavigationView  {
                List(films){ film in
                    NavigationLink(destination: DetailsView(Movie: MovieInfo(name: film.name, imageName: film.imageName, cast: film.cast))){
                        HStack{
                            Image(film.imageName)
                                .resizable()
                            // .scaledToFit()
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                            Text(film.name)
                                .font(.title)
                        }
                    }
                } .navigationTitle(Text("Movies"))
                 
         
          }  .accentColor(.white)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
