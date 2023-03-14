//
//  CardView.swift
//  money-transfer
//
//  Created by yinyang on 14/03/2023.
//


import SwiftUI

struct CardView: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image("visaIcon") // logo
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 15)
                    .foregroundColor(isSelected ? .white : .black)
                    .padding()
            }
            Spacer()
            Text("Balance")
                .foregroundColor(isSelected ? .white : .black)
                .font(.caption)
                .padding(.bottom, 5)
            HStack (alignment: .center) {
                Text("USD")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.caption)
                Text("$17,370.52")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.headline)
                    .fontWeight(.heavy)
            }
            .padding(.bottom)
            Spacer()
            Text("**** **** **** 3022")
                .foregroundColor(isSelected ? .white : .black)
                .font(.caption)
                .padding(.bottom)
        }
        .frame(width:130, height:150)
        .padding(8)
        .background(Color(isSelected ? (#colorLiteral(red: 0.3088428378, green: 0.3858735561, blue: 0.7556285262, alpha: 1)) : .white))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(isSelected: true)
                .previewLayout(.sizeThatFits)
            CardView()
                .previewLayout(.sizeThatFits)
        }
    }
}
