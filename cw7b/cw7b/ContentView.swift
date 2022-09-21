//
//  ContentView.swift
//  cw7b
//
//  Created by khaled falah alazemi  on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tapped = false
    @State var selected = ""
    var body: some View {
        VStack{
            
            HStack{
                Text("choose your major")
                    .font(.title)
                Image(systemName: tapped ? "minus.circle.fill" : "plus.circle.fill")
                    .font(.title)
                    .foregroundColor(tapped ? .red : .green)
                    .onTapGesture{
                        withAnimation(.easeIn(duration: 0.5)){
                            tapped.toggle()
                        }
                    }
            }
            
            VStack{
                MajorView(major: "Computer Engineering", selected: $selected)
                MajorView(major: "Computer Science", selected: $selected)
                MajorView(major: "Other", selected: $selected)
            }
            .opacity(tapped ? 1.0 : 0.0)
            
            HStack{
                Text("Major is : ")
                    .font(.title)
                    .fontWeight(.bold)
                Text(selected)
                    .font(.title)
            }
                  
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MajorView: View {
    var major : String
    @Binding var selected : String
    var body: some View {
        ZStack{
            Capsule()
                .frame(width: 250, height: 60)
                .foregroundColor(major == selected ? .accentColor : .cyan)
            Text(major)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.bold)
            
        } .onTapGesture{
            selected = major
        }
    }
}
