//
//  ContentView.swift
//  money-transfer
//
//  Created by yinyang on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.9645929933, green: 0.9640330672, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
                ScrollView(.vertical) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10, id: \.self) { item in
                                CardView(isSelected: item == 0)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                            }
                        }
                        .padding(20)
                    }
                }
                //.background(Color(#colorLiteral(red: 0.9645929933, green: 0.9640330672, blue: 1, alpha: 1)))
            }
            .navigationTitle(Text("My Card"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
