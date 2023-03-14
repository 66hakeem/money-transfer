//
//  CardsScreen.swift
//  money-transfer
//
//  Created by yinyang on 14/03/2023.
//

import SwiftUI

struct CardsScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.9645929933, green: 0.9640330672, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
                ScrollView(.vertical) {
                    CardListView()
                    TransactionView()
                }
            }
            .navigationTitle(Text("My Cards"))
        }
    }
}

struct CardsScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardsScreen()
    }
}
